<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    // Menambahkan relasi reportedby
    public function reportedby()
    {
        return $this->belongsTo(User::class, 'reportedby');
    }

    use HasFactory;

    protected $guarded = [];

    public function sla()
    {
        return $this->belongsTo(Sla::class);
    }

    public function emails()
    {
        return $this->hasMany(Log_email::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
    

    // public function getDoneAttribute()
    // {
    //     return $this->tasks()->where('status', 'closed')->count();
    // }

    // public function tasks()
    // {
    //     return $this->hasMany(Task::class);
    // }

}
