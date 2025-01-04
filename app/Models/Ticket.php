<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;  // Trait HasFactory dipindah ke atas

    protected $guarded = [];

    // Relasi dengan Project
    public function project()
    {
        return $this->belongsTo(Project::class, 'project_id');
    }

    // Relasi dengan User untuk reportedby
    public function reportedby()
    {
        return $this->belongsTo(User::class, 'reportedby');
    }

    // Relasi dengan SLA
    public function sla()
    {
        return $this->belongsTo(Sla::class);
    }

    // Relasi dengan Log_email
    public function emails()
    {
        return $this->hasMany(Log_email::class);
    }

    // Relasi dengan User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relasi dengan Customer
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}