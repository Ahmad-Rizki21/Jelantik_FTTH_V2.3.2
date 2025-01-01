<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Customer;
use App\Models\Project;

class CustomerProject extends Component
{
    public $selectedCustomer = null;
<<<<<<< HEAD
    public $projects = [];
    public $customerProject = null;

    public function mount($customerId = null)
=======
    public $selectedProject = null;
    public $projects = null;
    public $customerProject = null;

    public function mount($customerId)
>>>>>>> a92951c85166b29d30c5a8a10bd447091bda8c1b
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
<<<<<<< HEAD
        $this->projects = Project::where('customer_id', $customer_id)
            ->select('id', 'name', 'id_pel', 'ip')
            ->get();

        $this->dispatchBrowserEvent('projects-loaded', ['projects' => $this->projects]);
    }
=======
        $this->projects = Project::where('customer_id', $customer_id)->get();

        $this->dispatchBrowserEvent('customer-updated', ['selectedCustomer' => $customer_id]);
    }

    public function updatedSelectedProject($project_id)
    {
        $this->customerProject = Project::findOrFail($project_id);
    }

>>>>>>> a92951c85166b29d30c5a8a10bd447091bda8c1b
}
