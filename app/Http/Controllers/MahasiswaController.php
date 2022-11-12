<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreMahasiswaRequest;
use App\Http\Requests\UpdateMahasiswaRequest;
use App\Models\Mahasiswa;
use App\Models\Peminjaman;
use DateTime;

class MahasiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mahasiswa = auth()->user();
        dd($mahasiswa);
        return view('mahasiswa.index', compact('mahasiswa', 'matakuliahs'));
    }

    public function indexAdmin()
    {
        $mahasiswas = Mahasiswa::all();
        $peminjamans = Peminjaman::all();
        return view('auth.admin.mahasiswa.index', compact('mahasiswas', 'peminjamans'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreMahasiswaRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreMahasiswaRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function show(Mahasiswa $mahasiswa)
    {
        // Menghitung Denda
        foreach ($mahasiswa->peminjamans as $peminjaman) {
            if (!$peminjaman->tgl_kembali) {
                $str_tgl_peminjaman = $peminjaman->tgl_pinjam;
                $hari_ini = new DateTime("now");
                $tgl_pinjam = new DateTime($str_tgl_peminjaman);

                $jumlah_rentang = $hari_ini->diff($tgl_pinjam)->format("%r%a"); //3
                $jumlah_hari_terlambat = 5 - (int)$jumlah_rentang; # 5 adalah batas waktu pinjam
                $jumlah_denda = 1000 * $jumlah_hari_terlambat;
            }
        }
        return view('auth.admin.mahasiswa.show', compact('mahasiswa',));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function edit(Mahasiswa $mahasiswa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateMahasiswaRequest  $request
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateMahasiswaRequest $request, Mahasiswa $mahasiswa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function destroy(Mahasiswa $mahasiswa)
    {
        //
    }
}
