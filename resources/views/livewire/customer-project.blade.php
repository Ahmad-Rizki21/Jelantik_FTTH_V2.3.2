<div>
<<<<<<< HEAD
    <!-- CUSTOMER SELECTION -->
    <div class="form-group">
        <label>CUSTOMER</label>
        <select wire:model="selectedCustomer" class="form-control">
            <option value="">- SELECT CUSTOMER -</option>
=======
    <div class="form-group">
        <label>CUSTOMER</label>
        <select wire:model="selectedCustomer" class="form-control">
                <option value ="">- SELECT CUSTOMER -</option>
>>>>>>> a92951c85166b29d30c5a8a10bd447091bda8c1b
            @foreach ($customers as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
            @endforeach
        </select>
    </div>

<<<<<<< HEAD
    <!-- Project Search akan disembunyikan hingga customer dipilih -->
    @if ($selectedCustomer)
        <!-- PROJECT SEARCH -->
        <div class="form-group">
            <label>SEARCH PELANGGAN</label>
            <input type="text" id="search-project" class="form-control" placeholder="Search by Name, ID-Pel, or IP Address" />

            <!-- Search Results -->
            <ul id="project-results" class="list-group mt-2" style="display: none;">
                <!-- Results will be dynamically rendered -->
            </ul>
        </div>
    @endif

    @if (!is_null($projects))
=======
    @if (!is_null($projects))
        <div class="form-group">
                <label>SELECT PROJECT</label>
                <select class="form-control" wire:model="selectedProject">
                    <option value="">SELECT PROJECT</option>
                    @foreach ($projects as $item)
                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
        </div>

>>>>>>> a92951c85166b29d30c5a8a10bd447091bda8c1b
        @if (!is_null($customerProject))
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label>WARRANTY PERIOD</label>
                        {{ $customerProject['warrantyperiod'] }} Bulan
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label>CONTRACT PERIOD</label>
<<<<<<< HEAD
                        {{ $customerProject['contractperiod'] }} Bulan
                    </div>
                </div>
            </div>
        @endif
        <hr>
    @endif
</div>


<!-- JavaScript -->
<script>
    document.addEventListener('livewire:load', function () {
        // Trigger when projects are loaded
        window.addEventListener('projects-loaded', event => {
            const projects = event.detail.projects;

            // Handle search functionality
            const searchInput = document.getElementById('search-project');
            const resultsContainer = document.getElementById('project-results');

            searchInput.addEventListener('keyup', function () {
                const searchTerm = this.value.toLowerCase();

                // Filter projects based on search term
                const filteredProjects = projects.filter(project =>
                    project.name.toLowerCase().includes(searchTerm) ||
                    project.id_pel.toLowerCase().includes(searchTerm) ||
                    project.ip.toLowerCase().includes(searchTerm)
                );

                // Render filtered results
                resultsContainer.innerHTML = ''; // Clear previous results
                filteredProjects.forEach(project => {
                    const listItem = document.createElement('li');
                    listItem.className = 'list-group-item';
                    listItem.textContent = `${project.name} | ${project.id_pel} | ${project.ip}`;
                    
                    // When an item is clicked, emit Livewire event
                    listItem.addEventListener('click', () => {
                        Livewire.emit('updatedSelectedProject', project.id); // Emit Livewire event with project ID
                        searchInput.value = `${project.name} | ${project.id_pel} | ${project.ip}`;
                        resultsContainer.style.display = 'none'; // Hide results after selection
                    });
                    
                    resultsContainer.appendChild(listItem);
                });

                // Display the results container only if there are any matching projects
                resultsContainer.style.display = filteredProjects.length > 0 ? 'block' : 'none';
            });
        });
    });
</script>
=======
                        {{ $customerProject['warrantyperiod'] }} Bulan
                    </div>  
                </div>
            </div>
        @endif

        <hr>
        
    @endif

</div>
>>>>>>> a92951c85166b29d30c5a8a10bd447091bda8c1b
