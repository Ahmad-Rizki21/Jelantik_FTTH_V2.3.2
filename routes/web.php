<?php

use App\Models\News;
use App\Models\User;
use App\Models\Ticket;
use App\Models\Log_user;
use App\Services\ReportService;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SlaController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\LogUserController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\TicketReportController;

/*
|----------------------------------------------------------------------
| Web Routes
|----------------------------------------------------------------------
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::group(['middleware' => 'auth'], function() {

    // Dashboard Route
    Route::get('/dashboard', function () {
        $report = new ReportService(now()->format('Y'), now()->format('m'));
        $allReports = $report->getAllTechnicianTickets();
        $news = News::latest()->take(3)->get();
        $user = new User();
        return view('dashboard', compact('report', 'allReports', 'news', 'user'));
    })->name('dashboard');

    Route::get('/ticket-report', [TicketReportController::class, 'export'])->name('ticket.report');


    // Ticket Routes
    Route::resource('tickets', TicketController::class);

    // Permission Routes
    Route::resource('permissions', PermissionController::class)->only([
        'index'
    ]);

    // Role Routes
    Route::resource('roles', RoleController::class)->except([
        'show'
    ]);

    // User Routes
    Route::resource('users', UserController::class)->except([
        'show'
    ]);

    // News Routes
    Route::resource('news', NewsController::class)->except([
        'show'
    ]);

    // Customer Routes
    Route::resource('customers', CustomerController::class)->except([
        'show'
    ]);

    // SLA Routes
    Route::resource('slas', SlaController::class)->except([
        'show'
    ]);

    // Project Routes
    Route::resource('projects', ProjectController::class)->except([
        'show'
    ]);

    // User Log Routes
    Route::get('user-log', [LogUserController::class, 'index'])->name('userlog.index');

    // Route::get('/ticket-report', [TicketReportController::class, 'export'])->name('ticket.report');

});

// Authentication Routes
require __DIR__.'/auth.php';
