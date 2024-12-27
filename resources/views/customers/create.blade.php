@extends('layouts.app')

@section('content')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>Tambah Customer</h1>
            </div>

            <div class="section-body">

                <div class="card">
                    <div class="card-header">
                        <h4><i class="fas fa-bell"></i> Tambah Customer</h4>
                    </div>

                    <div class="card-body">
                        <form action="{{ route('customers.store') }}" method="POST">
                            @csrf

                            <div class="form-group">
                                <label>NAMA LAYANAN</label>
                                <input type="text" name="name" value="{{ old('name') }}" placeholder="Masukkan nama Customer" class="form-control @error('name') is-invalid @enderror">

                                @error('name')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <!-- <div class="form-group">
                                <label>ALAMAT</label>
                                <textarea class="form-control address @error('address') is-invalid @enderror" name="address" placeholder="Masukkan Alamat" rows="10">{!! old('address') !!}</textarea>
                                @error('address')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>TELEPON</label>
                                <input type="phone" name="phone" value="{{ old('phone') }}" placeholder="Masukkan Nomor Telepon" class="form-control @error('phone') is-invalid @enderror">

                                @error('phone')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>


                            <div class="form-group">
                                <label>ID-PEL</label>
                                <input type="text" name="id_pel" value="{{ old('id_pel') }}" placeholder="Masukan ID Pelanggan" class="form-control @error('id_pel') is-invalid @enderror">

                                @error('id_pel')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>IP ADDRESS</label>
                                <input type="text" name="ip" value="{{ old('ip') }}" placeholder="Masukkan Ip Address" class="form-control @error('ip') is-invalid @enderror">

                                @error('ip')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>LAYANAN</label>
                                <input type="text" name="layanan" value="{{ old('layanan') }}" placeholder="Masukkan Nama Layanan" class="form-control @error('layanan') is-invalid @enderror">

                                @error('layanan')
                                <div class="invalid-feedback" style="display: block">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div> -->

                            <button class="btn btn-primary mr-1 btn-submit" type="submit"><i class="fa fa-paper-plane"></i> SIMPAN</button>
                            <button class="btn btn-warning btn-reset" type="reset"><i class="fa fa-redo"></i> RESET</button>

                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
@stop