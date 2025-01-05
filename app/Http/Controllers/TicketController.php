<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Problem;
use App\Models\Sla;
use App\Models\User;
use App\Models\Ticket;
use App\Models\Customer;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use App\Providers\LogActivity as ProvidersLogActivity;

class TicketController extends Controller
{
    public function __construct()
    {
        $this->middleware(['permission:tickets.index|tickets.create|tickets.edit|tickets.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index()
    {
        $tickets = Auth::user()->hasRole('Teknisi')
            ? Ticket::with('project', 'sla', 'customer', 'problem') // Tambahkan 'problem' di sini
                ->where('assignee', Auth::id())
                ->latest()
                ->when(request()->q, function ($tickets) {
                    $tickets->where('problemsummary', 'like', '%' . request()->q . '%');
                })->paginate(5)
            : Ticket::with('project', 'sla', 'customer', 'problem') // Tambahkan 'problem' di sini
                ->latest()
                ->when(request()->q, function ($tickets) {
                    $tickets->where('problemsummary', 'like', '%' . request()->q . '%');
                })->paginate(5);

        // Menambahkan nomor tiket dengan format random "TFTTH-"
        $tickets->getCollection()->transform(function ($ticket) {
            $ticket->ticket_number = $ticket->ticket_number ?? 'TFTTH-' . mt_rand(100000, 999999);
            return $ticket;
        });
        return view('tickets.index', compact('tickets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create()
    {
        // $slas = Sla::orderBy('name', 'asc')->get();
        // $users = User::role('teknisi')->get();
        // return view('tickets.create', compact('slas', 'users'));

        $slas = Sla::orderBy('name', 'asc')->get();
        $users = User::role('teknisi')->get();
        $problems = Problem::orderBy('name', 'asc')->get(); // Mengambil data problem summary
        return view('tickets.create', compact('slas', 'users', 'problems'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */

    public function store(Request $request)
    {
        $this->validate($request, [
            'updated_customer' => 'required',
            'reporteddate' => 'required|date',
            'sla_id' => 'required',
            'summary' => 'required',
            'detail' => 'required',
            'technician_id' => 'required',
        ]);

        // Membuat nomor tiket dengan format TFTTH-XXXXXX
        $ticket_number = 'TFTTH-' . mt_rand(100000, 999999);

        $ticket = Ticket::create([
            'number' => $ticket_number,
            'sla_id' => $request->input('sla_id'),
            'reportedby' => Auth::id(),
            'customer_id' => $request->input('updated_customer'),
            'reporteddate' => $request->input('reporteddate'),
            'problemsummary' => $request->input('summary'),
            'problemdetail' => $request->input('detail'),
            'status' => 'Open',
            'assignee' => $request->input('technician_id'),
            'assigneddate' => now(),
        ]);

        if ($ticket) {
            event(new ProvidersLogActivity(Auth::user(), 'Membuat Tiket No ' . $ticket->number));
            return redirect()->route('tickets.index')->with(['success' => 'Tiket Berhasil Dibuat']);
        }
        return redirect()->route('tickets.index')->with(['error' => 'Tiket Gagal Dibuat']);
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function show($id)
    {
        $ticket = Ticket::findOrFail($id);
        return view('tickets.show', compact('ticket'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function edit($id)
    {
        $ticket = Ticket::findOrFail($id);

        // Ambil data yang diperlukan untuk dropdown
        $slas = Sla::orderBy('name', 'asc')->get();
        $users = User::role('teknisi')->get();
        $customers = Customer::all(); // Ambil semua customer
        $problems = Problem::orderBy('name', 'asc')->get(); // Ambil semua problem

        // Format tanggal jika ada nilainya
        if ($ticket->reporteddate) {
            $reportedDate = new DateTime($ticket->reporteddate);
            $ticket->reporteddate = $reportedDate->format('Y-m-d\TH:i');
        }
        if ($ticket->closeddate) {
            $closedDate = new DateTime($ticket->closeddate);
            $ticket->closeddate = $closedDate->format('Y-m-d\TH:i');
        }
        if ($ticket->pendingdate) {
            $pendingdate = new DateTime($ticket->pendingdate);
            $ticket->pendingdate = $pendingdate->format('Y-m-d\TH:i');
        }

        return view('tickets.edit', compact('ticket', 'slas', 'users', 'customers', 'problems'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'updated_customer' => 'required',
            'sla_id' => 'required',
            'summary' => 'required',
            'detail' => 'required',
            'technician_id' => 'required',
            'pendingdate' => 'required_if:status,Pending|nullable|date',
            'closeddate' => 'required_if:status,Closed|nullable|date',
        ]);

        $ticket = Ticket::findOrFail($id);

        // Format tanggal jika ada nilainya
        $pendingDate = $request->pendingdate ? (new DateTime($request->pendingdate))->format('Y-m-d H:i:s') : null;
        $closedDate = $request->closeddate ? (new DateTime($request->closeddate))->format('Y-m-d H:i:s') : null;

        $ticket->update([
            'sla_id' => $request->sla_id,
            'customer_id' => $request->updated_customer,
            'problemsummary' => $request->summary,
            'problemdetail' => $request->detail,
            'assignee' => $request->technician_id,
            'resolution' => $request->resolution,
            'pendingdate' => $pendingDate,
            'closeddate' => $closedDate,
            'status' => $request->status,
        ]);

        if ($ticket) {
            event(new ProvidersLogActivity(Auth::user(), 'Memperbaharui Tiket No ' . $ticket->number));
            return redirect()->route('tickets.index')->with(['success' => 'Tiket Berhasil Diupdate!']);
        }
        return redirect()->route('tickets.index')->with(['error' => 'Tiket Gagal Diupdate!']);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $ticket = Ticket::findOrFail($id);

        if ($ticket->delete()) {
            event(new ProvidersLogActivity(Auth::user(), 'Menghapus Tiket No ' . $ticket->number));
            return response()->json(['status' => 'success']);
        }
        return response()->json(['status' => 'error']);
    }

    public function closeTicket(Ticket $ticket)
    {
        try {
            $ticket->update([
                'status' => 'closed',
                'closeddate' => now()
            ]);

            return redirect()->back()->with('success', 'Ticket berhasil ditutup');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Gagal menutup ticket: ' . $e->getMessage());
        }
    }
}
