<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Problem;

class ProblemSeeder extends Seeder
{
    public function run()
    {
        // Ini adalah colom untuk menambahkan Problem Summary Nanti
        $problems = [
            ['name' => 'Internet Down', 'description' => 'Tidak Ada Koneksi Internet'],
            ['name' => 'Speed Lambat', 'description' => 'Ketika dilakukan Speedtest tidak mencapai 10 Mbps. dll'],
            ['name' => 'Hardware Issue', 'description' => 'Indikasi Modem Hang / Matot / Adaptor'],
            ['name' => 'Los Merah', 'description' => 'Indikasi Kabel Putus Pada ODP / Di Sisi User'],
        ];

        foreach ($problems as $problem) {
            Problem::create($problem);
        }
    }
}
