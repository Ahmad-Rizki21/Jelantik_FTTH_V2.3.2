@extends('layouts.app')
@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Permissions</h1>
        </div>

        <style>
            body {
                overflow-x: hidden;
                /* Menonaktifkan scroll horizontal */
            }

            .section-body {
                width: 100%;
                /* Pastikan elemen ini tidak lebih lebar dari layar */
                overflow-x: hidden;
                /* Menyembunyikan scroll horizontal pada elemen ini */
            }

            .table-responsive {
                overflow-x: auto;
                /* Memastikan tabel bisa di-scroll horizontal tanpa menyebabkan scroll global */
            }
        </style>

        <div class="section-body">
            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-key"></i> Permissions</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('permissions.index') }}" method="GET">
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="q" placeholder="cari berdasarkan nama">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btnprimary">
                                        <i class="fa fa-search"></i> CARI
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="text-align: center;width:6%">NO.</th>
                                    <th scope="col">NAMA PERMISSION</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($permissions as $no => $permission)
                                    <tr>
                                        <th scope="row" style="text-align:
                                            center">{{ ++$no + ($permissions->currentPage() - 1) * $permissions->perPage()
                                            }}</th>
                                        <td>{{ $permission->name }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div style="text-align: center">
                            {{ $permissions->links("vendor.pagination.bootstrap-4") }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@stop