<?php

// app/Http/Controllers/TicketReportController.php

namespace App\Http\Controllers;

use App\Models\Ticket;
use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class TicketReportController extends Controller
{
    public function export()
    {
        // Membuat instance baru dari spreadsheet
        $spreadsheet = new Spreadsheet();

        // Mengambil aktif sheet
        $sheet = $spreadsheet->getActiveSheet();

        // Memberikan nama kolom (header)
        $sheet->setCellValue('A1', 'Ticket Number');
        $sheet->setCellValue('B1', 'Name');
        $sheet->setCellValue('C1', 'id_pel');
        $sheet->setCellValue('D1', 'IP');
        $sheet->setCellValue('E1', 'Customer');
        $sheet->setCellValue('F1', 'Reported Date');
        $sheet->setCellValue('G1', 'Problem Summary');
        $sheet->setCellValue('H1', 'Status');

        // Mengambil data tiket
        $tickets = Ticket::with('customer', 'reportedby') // Memuat relasi customer dan reportedby
                         ->get();

        // Menyusun data tiket dalam Excel
        $row = 2; // Dimulai dari baris kedua setelah header
        foreach ($tickets as $ticket) {
            $sheet->setCellValue('A' . $row, $ticket->number); // Ticket Number
            $sheet->setCellValue('B' . $row, optional($ticket->reportedby)->project ); // Name
            $sheet->setCellValue('C' . $row, $ticket->reportedby); // id_pel
            $sheet->setCellValue('D' . $row, $ticket->ip); // IP (pastikan tiket menyimpan IP address)
            $sheet->setCellValue('E' . $row, $ticket->customer->name); // Customer Name (relasi)
            $sheet->setCellValue('F' . $row, $ticket->reporteddate); // Reported Date
            $sheet->setCellValue('G' . $row, $ticket->problemsummary); // Problem Summary
            $sheet->setCellValue('H' . $row, $ticket->status); // Status
            $row++;
        }

        // Membuat writer dan menyimpannya ke dalam file Excel
        $writer = new Xlsx($spreadsheet);

        // Menyimpan file Excel ke dalam response
        $fileName = 'ticket-report-' . now()->format('Y-m-d') . '.xlsx';
        return response()->stream(
            function() use ($writer) {
                $writer->save('php://output');
            },
            200,
            [
                'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                'Content-Disposition' => 'attachment; filename="' . $fileName . '"',
            ]
        );
    }
}






?>
