# Requirements Trobel Tiket FTTH

## PHP
- PHP >= PHP 8.2.12 (cli) (built: Oct 24 2023 21:15:15) (ZTS Visual C++ 2019 x64)
- Laravel >= Laravel Framework Version 8.83.29

## Database Server
- **Server**: 127.0.0.1 via TCP/IP  
- **Server Type**: MariaDB  / Mysql
- **Server Connection**: SSL is not being used  
- **Server Version**: 10.4.32-MariaDB - mariadb.org binary distribution  
- **Protocol Version**: 10  
- **User**: root@localhost  
- **Charset**: UTF-8 Unicode (utf8mb4)

## Web Server
- Apache/2.4.58 (Win64) OpenSSL/3.1.3 PHP/8.2.12  
- Database Client Version: libmysql - mysqlnd 8.2.12  
- PHP Extensions:  
  - `mysqli`  
  - `curl`  
  - `mbstring`  
- PHP Version: 8.2.12  

---

## Dependencies
Berikut adalah daftar dependencies yang digunakan dalam proyek ini:

- **Framework & Libraries**
  - `asm89/stack-cors` 2.2.0 - Cross-origin resource sharing library and stack middleware
  - `brick/math` 0.12.1 - Arbitrary-precision arithmetic library
  - `carbonphp/carbon-doctrine-types` 3.2.0 - Types to use Carbon in Doctrine

- **Tools**
  - `doctrine/inflector` 2.0.10 - String manipulation with regard to upper/lowercase
  - `fakerphp/faker` 1.24.1 - Generates fake data for testing

- **Laravel Specific**
  - `laravel/framework` 8.83.29 - The Laravel Framework
  - `livewire/livewire` 2.12.8 - A front-end framework for Laravel

... *(dan seterusnya, Anda dapat melengkapi sesuai kebutuhan)*

---

## Langkah-Langkah untuk Menjalankan Proyek ini

### 1. Clone Repositori
Clone repositori ke lokal Anda dengan perintah berikut:
```bash
git clone https://github.com/Ahmad-Rizki21/FTTH-V1.2.0-Beta.git
Masuk ke Direktori Proyek
Setelah proses cloning selesai, masuk ke direktori proyek dengan perintah:

cd proyek
```
### 2. Instalasi Composer
```bash
Install Composer terbaru dengan menggunakan Perintah:
composer install

Selain itu, jika ada dependensi frontend menggunakan npm, jalankan:
npm install
```
### 3. Konfigurasi File .env
```bash
Salin file .env.example menjadi .env untuk konfigurasi environment:
cp .env.example .env
```
Kemudian, buka file .env dan sesuaikan pengaturan seperti database dan key aplikasi.

### 4. Generate Key Aplikasi
```bash
Laravel membutuhkan key aplikasi yang unik. Untuk itu, jalankan perintah berikut untuk menghasilkan key:

php artisan key:generate
```

### 5. Migrasi Database
```bash
Jika aplikasi menggunakan database, jalankan migrasi untuk membuat tabel yang diperlukan:

php artisan migrate
```

Jalankan Aplikasi
Setelah semua langkah di atas selesai, jalankan aplikasi Laravel menggunakan perintah berikut:
```bash
php artisan serve
```

Akses aplikasi melalui browser di http://localhost:8000.

---

### Penjelasan:
- **Clone Repositori**: Clone repositori dari GitHub ke komputer lokal.
- **Masuk ke Direktori Proyek**: Arahkan terminal ke folder proyek yang sudah di-clone.
- **Install Dependensi**: Install dependensi PHP dengan Composer dan dependensi frontend menggunakan npm.
- **Konfigurasi File `.env`**: Menyusun file `.env` untuk konfigurasi aplikasi, termasuk database.
- **Generate Key**: Membuat key aplikasi Laravel.
- **Migrasi Database**: Menyiapkan tabel di database menggunakan perintah `php artisan migrate`.
- **Jalankan Aplikasi**: Menjalankan aplikasi dengan perintah `php artisan serve`.

Jika Anda membutuhkan bantuan lebih lanjut, atau ingin menambahkan langkah lainnya, beri tahu saya!
