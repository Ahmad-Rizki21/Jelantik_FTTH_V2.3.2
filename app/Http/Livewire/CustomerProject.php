<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Customer;
use App\Models\Project;

class CustomerProject extends Component
{
    public $selectedCustomer = null;
    public $selectedProject = null;
    public $projects = [];
    public $customerProject = null;

    // Gabungkan method mount menjadi satu
    public function mount($customerId = null)
    {
        $this->selectedCustomer = $customerId;
        if ($customerId) {
            $this->updatedSelectedCustomer($customerId); // Load projects jika customerId diberikan
        }
    }

    public function render()
    {
        return view('livewire.customer-project', [
            'customers' => Customer::all()
        ]);
    }

    public function updatedSelectedCustomer($customer_id)
    {
        // Ambil projek berdasarkan customer_id yang dipilih
        $this->projects = Project::where('customer_id', $customer_id)
            ->select('id', 'name', 'id_pel', 'ip')
            ->get();

        // Kirimkan event browser dengan data projek
        $this->dispatchBrowserEvent('projects-loaded', ['projects' => $this->projects]);

        // Kirim event update customer
        $this->dispatchBrowserEvent('customer-updated', ['selectedCustomer' => $customer_id]);
    }

    public function updatedSelectedProject($project_id)
    {
        // Ambil projek berdasarkan project_id yang dipilih
        $this->customerProject = Project::findOrFail($project_id);
    }
}
