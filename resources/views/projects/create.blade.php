@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Tambah Pelanggan</h1>
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
                    <h4><i class="fas fa-bell"></i> Tambah pelanggan</h4>
                </div>

                <div class="card-body">
                    <form action="{{ route('projects.store') }}" method="POST">
                        @csrf

                        <div class="form-group">
                            <label>NAMA PELANGGAN</label>
                            <input type="text" name="name" value="{{ old('name') }}"
                                placeholder="Masukkan Judul project"
                                class="form-control @error('name') is-invalid @enderror">

                            @error('name')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label>ID PELANGGAN</label>
                            <input type="text" name="id_pel" value="{{ old('id_pel') }}"
                                placeholder="Masukkan ID Pelanggan Baru"
                                class="form-control @error('id_pel') is-invalid @enderror">

                            @error('name')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label>IP ADDRESS</label>
                            <input type="text" name="ip" value="{{ old('ip') }}" placeholder="Masukkan IP Address"
                                class="form-control @error('ip') is-invalid @enderror">

                            @error('name')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label>LAYANAN</label>
                            <select class="form-control select-customer @error('customer_id') is-invalid @enderror"
                                name="customer_id">
                                <option value="">- SELECT LAYANAN -</option>
                                @foreach ($customers as $customer)
                                    <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                                @endforeach
                            </select>
                            @error('customer_id')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <!--  <div class="form-group">
                                <label>DELIVERY START</label>
                                <input type="date" name="deliverystart"  class="form-control @error('deliverystart') is-invalid @enderror">

                                @error('deliverystart')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>DELIVERY END</label>
                                <input type="date" name="deliveryend"  class="form-control @error('deliveryend') is-invalid @enderror">

                                @error('deliveryend')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>INSTALL START</label>
                                <input type="date" name="installstart"  class="form-control @error('installstart') is-invalid @enderror">

                                @error('installstart')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>INSTALL END</label>
                                <input type="date" name="installend"  class="form-control @error('installend') is-invalid @enderror">

                                @error('installend')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>UAT START</label>
                                <input type="date" name="uatstart"  class="form-control @error('uatstart') is-invalid @enderror">

                                @error('uatstart')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>UAT END</label>
                                <input type="date" name="uatend"  class="form-control @error('uatend') is-invalid @enderror">

                                @error('uatend')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>BILL START</label>
                                <input type="date" name="billstart"  class="form-control @error('billstart') is-invalid @enderror">

                                @error('billstart')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>BILL END</label>
                                <input type="date" name="billdue"  class="form-control @error('billend') is-invalid @enderror">

                                @error('billend')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>WARRANTY PERIOD</label>
                                <input type="number" name="warrantyperiod" value="{{ old('warrantyperiod') }}" placeholder="Masukkan Warranty Period" class="form-control @error('warrantyperiod') is-invalid @enderror">

                                @error('warrantyperiod')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>CONTRACT START</label>
                                <input type="date" name="contractstart"  class="form-control @error('contractstart') is-invalid @enderror">

                                @error('contractstart')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>CONTRACT PERIOD</label>
                                <input type="number" name="contractperiod" value="{{ old('contractperiod') }}" placeholder="Masukkan Contract Period" class="form-control @error('contractyperiod') is-invalid @enderror">

                                @error('contractperiod')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div> -->


                        <button class="btn btn-primary mr-1 btn-submit" type="submit"><i class="fa fa-paper-plane"></i>
                            SIMPAN</button>
                        <button class="btn btn-warning btn-reset" type="reset"><i class="fa fa-redo"></i> RESET</button>

                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
@stop