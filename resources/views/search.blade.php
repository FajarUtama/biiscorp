<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Search Page</title>

    <!-- Include necessary CSS (Bootstrap, Select2, DataTables, etc.) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@1.3.1/dist/select2-bootstrap4.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
  <h1>Halaman Pencarian</h1>

  <!-- Search Form -->
  <form action="{{ route('search') }}" method="GET">
    <div class="row">
      <!-- Search Input -->
      <div class="col-md-4">
        <input type="text" name="query" value="{{ request()->input('query') }}" placeholder="Search..." class="form-control" />
      </div>

      <!-- Sort By -->
      <div class="col-md-4">
        <select class="form-control" name="sort_by" onchange="this.form.submit()">
          <option value="nama" {{ request()->input('sort_by') == 'nama' ? 'selected' : '' }}>Sort by Name</option>
          <option value="jabatan" {{ request()->input('sort_by') == 'jabatan' ? 'selected' : '' }}>Sort by Position</option>
          <option value="created_at" {{ request()->input('sort_by') == 'created_at' ? 'selected' : '' }}>Sort by Date Added</option>
        </select>
      </div>

      <!-- Sort Order -->
      <div class="col-md-2">
        <select name="sort_order" class="form-control" onchange="this.form.submit()">
          <option value="asc" {{ request()->input('sort_order') == 'asc' ? 'selected' : '' }}>Ascending</option>
          <option value="desc" {{ request()->input('sort_order') == 'desc' ? 'selected' : '' }}>Descending</option>
        </select>
      </div>

      <!-- Filter by Position -->
      <div class="col-md-4 mt-3">
        <select name="jabatan[]" class="select2 form-control" multiple="multiple" data-placeholder="Semua Jabatan">
            <option value="">Semua Jabatan</option>
            @foreach($allPositions as $position)
                <option value="{{ $position }}" {{ in_array($position, request()->input('jabatan', [])) ? 'selected' : '' }}>
                    {{ ucfirst($position) }}
                </option>
            @endforeach
        </select>
      </div>
    
    </div>

    <div class="col-md-2">
        <button type="submit" class="btn btn-primary mt-3">Search</button>
    </div>
  </form>

  <a href="{{ url('/') }}" class="btn btn-secondary mt-3">Kembali</a>

  <!-- Table to Display Results -->
  @if($employees->isNotEmpty())
    <table class="table table-striped mt-4">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Date Added</th>
            </tr>
        </thead>
        <tbody>
            @foreach($employees as $employee)
                <tr class="employee-row" 
                    data-nama="{{ $employee->nama }}" 
                    data-jabatan="{{ $employee->jabatan }}" 
                    data-created="{{ $employee->created_at->format('Y-m-d') }}" 
                    data-updated="{{ $employee->updated_at->format('Y-m-d') }}" 
                    data-foto="{{ $employee->foto ? asset('storage/fotos/' . $employee->foto) : asset('storage/fotos/No_Pic.jpg') }}">
                    <td>{{ $employee->nama }}</td>
                    <td>{{ $employee->jabatan }}</td>
                    <td>{{ $employee->created_at->format('Y-m-d') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <!-- Pagination links -->
    {{ $employees->appends(request()->query())->links('pagination::bootstrap-5') }}
  @else
    <p>No results found</p>
  @endif
</div>

<!-- Employee Detail Modal -->
<div class="modal fade" id="employeeDetailModal" tabindex="-1" aria-labelledby="employeeDetailModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="employeeDetailModalLabel">Employee Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div id="employeePhotoContainer">
          <img id="employeePhoto" src="" alt="Employee Photo" class="img-fluid mb-3" style="display: none;">
          <p id="noPhotoMessage" style="display: none;">Tidak ada foto profil</p>
        </div>
        <p><strong>Name:</strong> <span id="employeeName"></span></p>
        <p><strong>Position:</strong> <span id="employeePosition"></span></p>
        <p><strong>Date Added:</strong> <span id="employeeCreated"></span></p>
        <p><strong>Last Updated:</strong> <span id="employeeUpdated"></span></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Include necessary JavaScript (jQuery, Bootstrap, Select2, etc.) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script>
  $(document).ready(function() {
    // Initialize Select2 for filtering positions
    $(".select2").select2({
        theme: 'bootstrap4'
    });

    // Handle row click event to show employee details
    $(".employee-row").click(function() {
        var name = $(this).data('nama');
        var position = $(this).data('jabatan');
        var created = $(this).data('created');
        var updated = $(this).data('updated');
        var photo = $(this).data('foto');

        $("#employeeName").text(name);
        $("#employeePosition").text(position);
        $("#employeeCreated").text(created);
        $("#employeeUpdated").text(updated);

        // Display photo if available, otherwise display default message
        if (photo) {
            $("#employeePhoto").attr("src", photo).show();
            $("#noPhotoMessage").hide();
        } else {
            $("#employeePhoto").hide();
            $("#noPhotoMessage").show();
        }

        // Show the modal
        $("#employeeDetailModal").modal('show');
    });
  });
</script>
</body>
</html>
