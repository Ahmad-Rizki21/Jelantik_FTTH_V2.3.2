<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Customer;
use App\Models\Project;

class CustomerProject extends Component
{
    public $selectedCustomer = null;
    public $projects = [];
    public $customerProject = null;

    public function mount($customerId = null)
    {
        $this->selectedCustomer = $customerId;
    }

    public function render()
    {
        return view('livewire.customer-project', [
            'customers' => Customer::all()
        ]);
    }

    public function updatedSelectedCustomer($customer_id)
    {
        $this->projects = Project::where('customer_id', $customer_id)
            ->select('id', 'name', 'id_pel', 'ip')
            ->get();

        $this->dispatchBrowserEvent('projects-loaded', ['projects' => $this->projects]);
    }
}
