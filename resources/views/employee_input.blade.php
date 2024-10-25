<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee Input Page</title>

    <!-- Include necessary CSS (Bootstrap, Select2, Fileinput) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@1.3.1/dist/select2-bootstrap4.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
  <h1>Input Data Pegawai</h1>

  <!-- Success Message -->
  @if(session('success'))
    <div class="alert alert-success">
      {{ session('success') }}
    </div>
  @endif

  <!-- Employee Input Form -->
  <form action="{{ route('employee.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <!-- Nama Pegawai -->
    <div class="form-group">
      <label for="nama">Nama Pegawai:</label>
      <input type="text" id="nama" name="nama" class="form-control" required>
    </div>

    <!-- Jabatan (Select2) -->
    <div class="col-md-4 mt-3">
        <label for="jabatan">Pilih Jabatan:</label>
        <select id="jabatan" name="jabatan" class="select2 form-control" required>
            <option value="">Pilih Jabatan</option>
            @foreach($jobPositions as $position)
                <option value="{{ $position }}">{{ $position }}</option>
            @endforeach
        </select>
    </div>

    <!-- Upload Foto Pegawai (Fileinputjs) -->
    <div class="form-group">
      <label for="foto">Upload Foto Pegawai:</label>
      <input id="foto" type="file" name="foto" class="form-control" required>
    </div>

    <!-- Submit Button -->
    <div class="form-group">
      <button type="submit" class="btn btn-primary">Simpan Data</button>
    </div>
  </form>

  <a href="{{ url('/') }}" class="btn btn-secondary mt-3">Kembali</a>
</div>

<!-- Include necessary JavaScript (jQuery, Bootstrap, Select2, Fileinput) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-fileinput/js/fileinput.min.js"></script>
<script>
  $(document).ready(function() {
    // Initialize Select2
    $("#jabatan").select2({
      tags: true,
      placeholder: "Pilih Jabatan",
      allowClear: true,
      theme: 'bootstrap4'
    });

    // Initialize Fileinputjs
    $("#foto").fileinput({
      showUpload: true,
      browseClass: "btn btn-primary",
      allowedFileExtensions: ["jpg", "png"]
    });
  });
</script>
</body>
</html>
