<?php

namespace App\Http\Controllers;

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
            ? Ticket::where('assignee', Auth::id())->latest()->when(request()->q, function ($tickets) {
                $tickets->where('problemsummary', 'like', '%' . request()->q . '%');
            })->paginate(5)
            : Ticket::latest()->when(request()->q, function ($tickets) {
                $tickets->where('problemsummary', 'like', '%' . request()->q . '%');
            })->paginate(5);

        return view('tickets.index', compact('tickets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create()
    {
        $slas = Sla::orderBy('name', 'asc')->get();
        $users = User::role('teknisi')->get();
        return view('tickets.create', compact('slas', 'users'));
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

        $year = today()->year;
        $latest_ticket = Ticket::latest()->first();
        $new_number = $latest_ticket ? (int)Str::of($latest_ticket->number)->explode('/')->get(0) + 1 : 1;

        $ticket = Ticket::create([
            'number' => "$new_number/$year",
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
        $slas = Sla::orderBy('name', 'asc')->get();
        $users = User::role('teknisi')->get();
        $customer = Customer::all();
        return view('tickets.edit', compact('ticket', 'slas', 'users', 'customer'));
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
            'reporteddate' => 'required|date',
            'sla_id' => 'required',
            'summary' => 'required',
            'detail' => 'required',
            'technician_id' => 'required',
        ]);

        $ticket = Ticket::findOrFail($id);
        $ticket->update($request->only([
            'sla_id', 'customer_id', 'reporteddate', 'problemsummary', 'problemdetail', 'assignee', 'resolution', 'status'
        ]));

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
}
