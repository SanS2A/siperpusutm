<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{
    use HasFactory;

    protected $fillable = ['tgl_pinjam', 'tgl_kembali', 'denda', 'status', 'jumlah', 'id_buku', 'nim_mahasiswa'];

    function buku()
    {
        return $this->belongsTo(Buku::class, 'id');
    }
}
