<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    // Tentukan tabel yang digunakan jika berbeda dengan nama model
    protected $table = 'employees';

    // Kolom-kolom yang boleh diisi
    protected $fillable = ['nama', 'jabatan', 'foto'];
}
