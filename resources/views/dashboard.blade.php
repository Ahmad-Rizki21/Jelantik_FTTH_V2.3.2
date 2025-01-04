@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Dashboard FTTH Ticketing System</h1>
        </div>

        <div class="section-body">
            <div class="container">

                <div class="row">
                    <!-- Statistik Tiket -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="fa fa-ticket-alt text-white fa-2x"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>TIKET BULAN INI</h4>
                                </div>
                                <div class="card-body">
                                    {{ $report->getMonthlyTickets() ?? '0' }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-danger">
                                <i class="fa fa-skull-crossbones text-white fa-2x"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>SLA TERLAMPAUI</h4>
                                </div>
                                <div class="card-body">
                                    {{ $report->getOverdueTickets('red') ?? '0' }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-warning">
                                <i class="fa fa-exclamation-triangle text-white fa-2x"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>MENDEKATI SLA</h4>
                                </div>
                                <div class="card-body">
                                    {{ $report->getOverdueTickets('yellow') ?? '0' }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="fa fa-smile-wink text-white fa-2x"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>TIKET SELESAI</h4>
                                </div>
                                <div class="card-body">
                                    {{ $report->getMonthlyDoneTickets() ?? '0' }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Grafik Statistik Tiket -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fas fa-chart-line"></i> Grafik Statistik Tiket</h4>
                            </div>
                            <div class="card-body">
                                <canvas id="ticketStatsChart" style="height: 300px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- Laporan Bulan Ini -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fas fa-clipboard-list"></i> LAPORAN BULAN INI</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="text-align: center;width: 6%">NO.</th>
                                                <th>NAME</th>
                                                <th>OPEN</th>
                                                <th>EXPIRED</th>
                                                <th>WARNING</th>
                                                <th>PENDING</th>
                                                <th>DONE</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($allReports as $no => $item)
                                            <tr>
                                                <td style="text-align: center">{{ $no + 1 }}</td>
                                                <td>{{ $item['name'] }}</td>
                                                <td><span class="badge badge-primary">{{ $item['assigned'] }}</span></td>
                                                <td><span class="badge badge-danger">{{ $item['expired'] }}</span></td>
                                                <td><span class="badge badge-warning">{{ $item['warning'] }}</span></td>
                                                <td><span class="badge badge-dark">{{ $item['pending'] }}</span></td>
                                                <td><span class="badge badge-success">{{ $item['done'] ?? 0 }}</span></td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Announcement -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fas fa-bullhorn"></i> ANNOUNCEMENT</h4>
                            </div>
                            <div class="card-body">
                                @foreach ($news as $item)
                                <div class="list-group">
                                    <a href="#" class="list-group-item list-group-item-action list-group-item-light flex-column align-items-start mb-3">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h5 class="mb-2">{{ $item->title }}</h5>
                                        </div>
                                        <p class="mb-2">{{ $item->detail }}</p>
                                        <small>created by: {{ $user->getName($item->user_id) }}</small>
                                        <small> - {{ Carbon\Carbon::parse($item->updated_at)->diffForHumans() }}</small>
                                    </a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Mengambil data dari card statistik yang sudah ada
    const monthlyData = {
        dibuka: {{ $report->getMonthlyTickets() ?? '0' }},
        warning: {{ $report->getOverdueTickets('yellow') ?? '0' }},
        expired: {{ $report->getOverdueTickets('red') ?? '0' }},
        selesai: {{ $report->getMonthlyDoneTickets() ?? '0' }}
    };

    const ctx = document.getElementById('ticketStatsChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar', // Menggunakan tipe bar untuk visualisasi yang lebih jelas
        data: {
            labels: ['Status Tiket Bulan Ini'],
            datasets: [
                {
                    label: 'Tiket Bulan Ini',
                    data: [monthlyData.dibuka],
                    backgroundColor: '#6777ef',
                    borderColor: '#6777ef',
                    borderWidth: 1
                },
                {
                    label: 'Mendekati SLA',
                    data: [monthlyData.warning],
                    backgroundColor: '#ffa426',
                    borderColor: '#ffa426',
                    borderWidth: 1
                },
                {
                    label: 'SLA Terlampaui',
                    data: [monthlyData.expired],
                    backgroundColor: '#fc544b',
                    borderColor: '#fc544b',
                    borderWidth: 1
                },
                {
                    label: 'Tiket Selesai',
                    data: [monthlyData.selesai],
                    backgroundColor: '#63ed7a',
                    borderColor: '#63ed7a',
                    borderWidth: 1
                }
            ]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Jumlah Tiket'
                    }
                }
            },
            plugins: {
                legend: {
                    position: 'bottom',
                    labels: {
                        padding: 20
                    }
                },
                title: {
                    display: true,
                    text: 'Statistik Tiket Bulan Ini',
                    padding: {
                        top: 10,
                        bottom: 30
                    }
                }
            }
        }
    });
});
</script>

@endsection
