<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\BukuController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\MahasiswaController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Auth Route (Login and Register)
Auth::routes();
Route::get('/', [LoginController::class, 'viewMahasiswaLogin']);
Route::get('/login', [LoginController::class, 'viewMahasiswaLogin'])->name('viewMahasiswaLogin');
Route::post('/login', [LoginController::class, 'mahasiswaLogin'])->name('mahasiswaLogin');
Route::get('/admin/login', [LoginController::class, 'viewAdminLogin'])->name('viewAdminLogin');
Route::post('/admin/login', [LoginController::class, 'adminLogin'])->name('adminLogin');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
// Disable Default Auth from Laravel UI Auth
Route::get('/register', [LoginController::class, 'disableDefaultAuth']);


// HALAMAN Siperpus UTM ADMIN
Route::group(
    ['middleware' => 'auth:admin', 'prefix' => 'admin', 'as' => 'admin.'],
    function () {
        // Dashboard
        Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
        // Admin - Mahasiswa
        Route::group(
            ['prefix' => 'mahasiswas', 'as' => 'mahasiswas.'],
            function () {
                Route::get('/', [MahasiswaController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [MahasiswaController::class, 'create'])->name('create');
                Route::post('/store', [MahasiswaController::class, 'store'])->name('store');
                Route::get('/edit/{mahasiswa:nim}', [MahasiswaController::class, 'edit'])->name('edit');
                Route::patch('/update/{mahasiswa:nim}', [MahasiswaController::class, 'update'])->name('update');
                // Destroy ubah ke delete di formnya juga
                Route::get('/destroy/{mahasiswa:nim}', [MahasiswaController::class, 'destroy'])->name('destroy');
                Route::get('/{mahasiswa:nim}', [MahasiswaController::class, 'show'])->name('show');
            }
        );
        // Admin - Buku
        Route::group(
            ['prefix' => 'bukus', 'as' => 'bukus.'],
            function () {
                Route::get('/', [BukuController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [BukuController::class, 'create'])->name('create');
                Route::post('/store', [BukuController::class, 'store'])->name('store');
                Route::get('/edit/{buku:slug}', [BukuController::class, 'edit'])->name('edit');
                Route::patch('/update/{buku:slug}', [BukuController::class, 'update'])->name('update');
                Route::get('/destroy/{buku:slug}', [BukuController::class, 'destroy'])->name('destroy');
                Route::get('/{buku:slug}', [BukuController::class, 'show'])->name('show');
            }
        );
        // Admin - Matakuliah
        Route::group(
            ['prefix' => 'matakuliahs', 'as' => 'matakuliahs.'],
            function () {
                Route::get('/', [MatakuliahController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [MatakuliahController::class, 'create'])->name('create');
                Route::post('/store', [MatakuliahController::class, 'store'])->name('store');
                Route::get('/edit/{matakuliah:kode}', [MatakuliahController::class, 'edit'])->name('edit');
                Route::patch('/update/{matakuliah:kode}', [MatakuliahController::class, 'update'])->name('update');
                Route::get('/destroy/{matakuliah:kode}', [MatakuliahController::class, 'destroy'])->name('destroy');
                Route::get('/{matakuliah:kode}', [MatakuliahController::class, 'show'])->name('show');
            }
        );

        // Admin - Status Matakuliah
        Route::group(
            ['prefix' => 'status-matkuls', 'as' => 'status_matkuls.'],
            function () {
                Route::get('/', [StatusMatkulController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [StatusMatkulController::class, 'create'])->name('create');
                Route::post('/store', [StatusMatkulController::class, 'store'])->name('store');
                Route::put('/update/{matakuliah:kode}', [StatusMatkulController::class, 'updateAndDelete'])->name('update_delete');
            }
        );

        // Admin - Fakultas
        Route::group(
            ['prefix' => 'fakultases', 'as' => 'fakultases.'],
            function () {
                Route::get('/', [FakultasController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [FakultasController::class, 'create'])->name('create');
                Route::post('/store', [FakultasController::class, 'store'])->name('store');
                Route::get('/edit/{fakultas:kode}', [FakultasController::class, 'edit'])->name('edit');
                Route::patch('/update/{fakultas:kode}', [FakultasController::class, 'update'])->name('update');
                Route::get('/destroy/{fakultas:kode}', [FakultasController::class, 'destroy'])->name('destroy');
            }
        );

        // Admin - Jurusan
        Route::group(
            ['prefix' => 'jurusans', 'as' => 'jurusans.'],
            function () {
                Route::get('/', [JurusanController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [JurusanController::class, 'create'])->name('create');
                Route::post('/store', [JurusanController::class, 'store'])->name('store');
                Route::get('/edit/{jurusan:kode}', [JurusanController::class, 'edit'])->name('edit');
                Route::patch('/update/{jurusan:kode}', [JurusanController::class, 'update'])->name('update');
                Route::get('/destroy/{jurusan:kode}', [JurusanController::class, 'destroy'])->name('destroy');
            }
        );

        // Admin - Program Studi
        Route::group(
            ['prefix' => 'program-studis', 'as' => 'program_studis.'],
            function () {
                Route::get('/', [ProgramStudiController::class, 'indexAdmin'])->name('index');
                Route::get('/create', [ProgramStudiController::class, 'create'])->name('create');
                Route::post('/store', [ProgramStudiController::class, 'store'])->name('store');
                Route::get('/edit/{program_studi:kode}', [ProgramStudiController::class, 'edit'])->name('edit');
                Route::patch('/update/{program_studi:kode}', [ProgramStudiController::class, 'update'])->name('update');
                Route::get('/destroy/{program_studi:kode}', [ProgramStudiController::class, 'destroy'])->name('destroy');
            }
        );

        // Admin - KRS
        Route::group(
            ['prefix' => 'krses', 'as' => 'krses.'],
            function () {
                Route::get('/', [KrsController::class, 'indexAdmin'])->name('index');
            }
        );

        // Admin - KHS
        Route::group(
            ['prefix' => 'khses', 'as' => 'khses.'],
            function () {
                Route::get('/', [KhsController::class, 'indexAdmin'])->name('index');
            }
        );
    }
);


// HALAMAN MAHASISWA
Route::group(
    ['middleware' => 'auth:mahasiswa', 'prefix' => 'mahasiswa', 'as' => 'mahasiswa.'],
    function () {
        Route::get('/', [MahasiswaController::class, 'index'])->name('index');
        Route::get('#profile', [MahasiswaController::class, 'index'])->name('profile');
        Route::get('/', [MahasiswaController::class, 'index'])->name('index');
        Route::patch('/updatePassword', [MahasiswaController::class, 'updatePassword'])->name('updatePassword');

        // Mahasiswa - KRS
        Route::group(
            ['prefix' => 'krses', 'as' => 'krses.'],
            function () {
                Route::post('/store', [KrsController::class, 'store'])->name('store');
                Route::get('/destroy/{krs:id}', [KrsController::class, 'destroy'])->name('destroy');
            }
        );
    }
);
