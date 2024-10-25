<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->input('query');
        $sortBy = $request->input('sort_by', 'nama');
        $sortOrder = $request->input('sort_order', 'asc');
        $jabatan = $request->input('jabatan', []); // Accept multiple positions
    
        // Retrieve all unique positions
        $allPositions = Employee::distinct()->pluck('jabatan');
    
        // Initialize query
        $employeesQuery = Employee::query();
    
        // Apply search filter
        if ($query) {
            $employeesQuery->where('nama', 'LIKE', "%$query%")
                           ->orWhere('jabatan', 'LIKE', "%$query%");
        }
    
        // Apply multiple position filters
        if ($jabatan) {
            $employeesQuery->whereIn('jabatan', $jabatan);
        }
    
        // Apply sorting
        $employeesQuery->orderBy($sortBy, $sortOrder);
    
        // Paginate the results
        $employees = $employeesQuery->paginate(10);
    
        return view('search', compact('employees', 'query', 'allPositions'));
    }    
}
