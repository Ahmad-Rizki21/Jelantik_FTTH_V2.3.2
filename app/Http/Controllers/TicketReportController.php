<?php

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
        $sheet = $spreadsheet->getActiveSheet();

        // Mengatur header sesuai kebutuhan
        $headers = [
            'A1' => 'Ticket Number',
            'B1' => 'Project',
            'C1' => 'Customer',
            'D1' => 'Reported Date',
            'E1' => 'Problem Summary',
            'F1' => 'Closed Date',
            'G1' => 'Status'
        ];

        // Menerapkan header
        foreach ($headers as $cell => $value) {
            $sheet->setCellValue($cell, $value);
            // Memberikan style bold pada header
            $sheet->getStyle($cell)->getFont()->setBold(true);
        }

        // Mengambil data tiket dengan relasi yang dibutuhkan
        $tickets = Ticket::with(['project', 'customer'])
                        ->orderBy('number')
                        ->get();

        // Menyusun data tiket dalam Excel
        $row = 2; // Dimulai dari baris kedua setelah header
        foreach ($tickets as $ticket) {
            // Mengambil data project (yang berisi name, id_pel, dan ip)
            $projectInfo = $ticket->project ? 
                          sprintf("%s | %s | %s", 
                              $ticket->project->name ?? 'N/A',
                              $ticket->project->id_pel ?? 'N/A',
                              $ticket->project->ip ?? 'N/A'
                          ) : 'N/A';

            $sheet->setCellValue('A' . $row, $ticket->number);
            $sheet->setCellValue('B' . $row, $projectInfo);
            $sheet->setCellValue('C' . $row, $ticket->customer->name ?? 'N/A');
            $sheet->setCellValue('D' . $row, $ticket->reporteddate ? date('Y-m-d H:i:s', strtotime($ticket->reporteddate)) : 'N/A');
            $sheet->setCellValue('E' . $row, $ticket->problemsummary);
            $sheet->setCellValue('F' . $row, $ticket->closeddate ? date('Y-m-d H:i:s', strtotime($ticket->closeddate)) : 'N/A');
            $sheet->setCellValue('G' . $row, $ticket->status);
            
            $row++;
        }

        // Auto-size columns untuk membuat lebar kolom menyesuaikan konten
        foreach (range('A', 'G') as $column) {
            $sheet->getColumnDimension($column)->setAutoSize(true);
        }

        // Membuat writer untuk format XLSX
        $writer = new Xlsx($spreadsheet);

        // Menyiapkan nama file dengan timestamp
        $fileName = 'ticket-report-' . date('Y-m-d-His') . '.xlsx';

        // Mengirim file sebagai response
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