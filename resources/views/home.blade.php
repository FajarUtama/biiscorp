<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>

    <!-- Include necessary CSS (Bootstrap) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container text-center mt-5">
    <h1 class="mb-4">Selamat Datang</h1>

    <!-- Button group with Bootstrap styling -->
    <div class="d-grid gap-2 d-md-flex justify-content-md-center">
        <button class="btn btn-primary btn-lg me-md-2" onclick="window.location.href='{{ route('search') }}'">Cari Data</button>
        <button class="btn btn-secondary btn-lg" onclick="window.location.href='{{ route('employee.input') }}'">Input Data Pegawai</button>
    </div>
</div>

<!-- Include necessary JavaScript (Bootstrap) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
