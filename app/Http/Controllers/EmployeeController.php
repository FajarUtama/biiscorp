<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Employee; // Model Employee
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class EmployeeController extends Controller
{
    public function store(Request $request)
    {
        // Validasi data yang masuk
        $validatedData = $request->validate([
            'nama' => 'required|string|max:255',
            'jabatan' => 'required|string|max:255',
            'foto' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // File harus berupa image
        ]);

        // Handle upload foto
        if ($request->hasFile('foto')) {
            $fotoName = time() . '.' . $request->foto->extension();
            $request->foto->storeAs('public/fotos', $fotoName); // Simpan foto di folder "storage/app/public/fotos"
        }

        // Buat data pegawai baru
        $employee = new Employee();
        $employee->nama = $validatedData['nama'];
        $employee->jabatan = $validatedData['jabatan']; // Simpan jabatan dari inputan
        $employee->foto = $fotoName; // Simpan nama file foto

        // Simpan ke database
        $employee->save();

        // Redirect ke halaman input dengan pesan sukses
        return redirect('employee/input')->with('success', 'Data Pegawai berhasil disimpan!');
    }

    public function create()
    {
        // Ambil semua jenis jabatan dari kolom "jabatan" di tabel "employees"
        $jobPositions = \DB::table('employees')->distinct()->pluck('jabatan'); // Mengambil nilai unik dari kolom jabatan

        return view('employee_input', compact('jobPositions'));
    }

    
}
