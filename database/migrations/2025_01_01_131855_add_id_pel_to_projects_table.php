<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIdPelToProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
  
        public function up()
        {
            Schema::table('projects', function (Blueprint $table) {
                $table->string('id_pel')->nullable(); // Atau sesuai tipe data yang sesuai
            });
        }

        public function down()
        {
            Schema::table('projects', function (Blueprint $table) {
                $table->dropColumn('id_pel');
            });
        }

}