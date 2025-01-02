<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Contracts\View\View;
use Illuminate\Contracts\View\Factory;

class ProjectController extends Controller
{
    public function __construct()
    {
        $this->middleware(['permission:projects.index|projects.create|projects.edit|projects.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return Factory|View
     */
    public function index()
    {
        $projects = Project::latest()->when(request()->q, function ($query) {
            $query->where('name', 'like', '%' . request()->q . '%');
        })->paginate(10);

        $customer = new Customer();

        return view('projects.index', compact('projects', 'customer'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Factory|View
     */
    public function create()
    {
        $customers = Customer::orderBy('name', 'asc')->get();
        return view('projects.create', compact('customers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'id_pel' => 'required',
            'ip' => 'required',
            'customer_id' => 'required',
        ]);

        $project = Project::create($request->only(['name', 'id_pel', 'ip', 'customer_id']));

        if ($project) {
            return redirect()->route('projects.index')->with(['success' => 'Project Berhasil Dibuat']);
        } else {
            return redirect()->route('projects.index')->with(['error' => 'Project Gagal Dibuat']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return Factory|View|RedirectResponse
     */
    public function show($id)
    {
        $project = Project::find($id);
        if ($project) {
            return view('projects.show', compact('project'));
        } else {
            return redirect()->route('projects.index')->with(['error' => 'Project Tidak Ditemukan']);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return Factory|View
     */
    public function edit($id)
    {
        $project = Project::findOrFail($id);
        $customers = Customer::orderBy('name', 'asc')->get();
        return view('projects.edit', compact('project', 'customers'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param int $id
     * @return RedirectResponse
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'id_pel' => 'required',
            'ip' => 'required',
            'customer_id' => 'required',
        ]);

        $project = Project::findOrFail($id);

        $project->update($request->only(['name', 'id_pel', 'ip', 'customer_id']));

        if ($project) {
            return redirect()->route('projects.index')->with(['success' => 'Project Berhasil Diubah']);
        } else {
            return redirect()->route('projects.index')->with(['error' => 'Project Gagal Diubah']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $project = Project::findOrFail($id);
        $project->delete();

        return response()->json([
            'status' => $project ? 'success' : 'error'
        ]);
    }

    /**
     * Search for a project by name, ID-pel, or IP address.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function searchProject(Request $request)
    {
        $searchTerm = $request->input('search');

        $projects = Project::where('name', 'LIKE', "%$searchTerm%")
            ->orWhere('id_pel', 'LIKE', "%$searchTerm%")
            ->orWhere('ip', 'LIKE', "%$searchTerm%")
            ->get();

        return response()->json($projects);
    }
}
