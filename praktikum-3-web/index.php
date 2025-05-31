<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Website PHP Pertamaku</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f4f8;
      padding: 40px;
      text-align: center;
    }
    .card {
      background: white;
      padding: 30px;
      max-width: 500px;
      margin: auto;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      border-radius: 10px;
    }
    h1 {
      color: #007acc;
    }
    p {
      font-size: 1.1em;
    }
  </style>
</head>
<body>

<div class="card">
  <h1><?php echo "Halo Dunia!"; ?></h1>
  <p>Ini adalah website pertamaku menggunakan <strong>PHP</strong>.</p>

  <?php
    $nama = "Haifan";
    $tanggal = date("d-m-Y");

    echo "<p>Selamat datang, <strong>$nama</strong>!</p>";
    echo "<p>Hari ini tanggal <strong>$tanggal</strong>.</p>";
  ?>
</div>

</body>
</html>
