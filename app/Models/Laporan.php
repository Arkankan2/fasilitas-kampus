<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    protected $table = 'laporan';
    protected $primaryKey = 'id_laporan';

    protected $fillable = [
        'id_mahasiswa',
        'id_kategori',
        'id_sub_kategori',
        'id_lokasi',
        'id_teknisi',
        'deskripsi',
        'foto',
        'Tingkat_Kerusakan',
        'Status_terkini',
        
        // 🌟 PERBAIKAN: Tambahkan 2 kolom ini agar diizinkan masuk ke database
        'foto_selesai',
        'catatan_selesai',
    ];

    public function mahasiswa()
    {
        return $this->belongsTo(Mahasiswa::class, 'id_mahasiswa', 'id_mahasiswa');
    }

    public function kategori()
    {
        return $this->belongsTo(KategoriFasilitas::class, 'id_kategori', 'id_kategori');
    }

    public function subkategori()
    {
        return $this->belongsTo(SubKategoriFasilitas::class, 'id_sub_kategori', 'id_sub_kategori');
    }

    public function lokasi()
    {
        return $this->belongsTo(LokasiFasilitas::class, 'id_lokasi', 'id_lokasi');
    }
}