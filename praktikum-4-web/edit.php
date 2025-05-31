<?php
// Include file koneksi database
include_once("config.php");

// Ambil ID dari parameter URL
$id = $_GET['id'];

// Ambil data berdasarkan ID
$result = mysqli_query($mysqli, "SELECT * FROM library WHERE id=$id");

while ($user_data = mysqli_fetch_array($result)) {
    $name = $user_data['name'];
    $category = $user_data['category'];
    $publisher = $user_data['publisher'];
    $count = $user_data['count'];
    $picture = $user_data['picture'];
}

// Jika form disubmit, update data
if (isset($_POST['update'])) {
    $name = $_POST['name'];
    $category = $_POST['category'];
    $publisher = $_POST['publisher'];
    $count = $_POST['count'];

    // Cek apakah ada file baru diunggah
    if ($_FILES['picture']['name']) {
        $target_dir = "picture/";
        $target_file = $target_dir . basename($_FILES["picture"]["name"]);
        move_uploaded_file($_FILES["picture"]["tmp_name"], $target_file);
        $picture = $_FILES['picture']['name'];

        // Update dengan gambar baru
        $result = mysqli_query($mysqli, "UPDATE library SET picture='$picture', name='$name', category='$category', publisher='$publisher', count='$count' WHERE id=$id");
    } else {
        // Update tanpa mengganti gambar
        $result = mysqli_query($mysqli, "UPDATE library SET name='$name', category='$category', publisher='$publisher', count='$count' WHERE id=$id");
    }

    // Redirect setelah update
    header("Location: index.php");
}
?>
<html>
<head>
    <title>Edit User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <br>
    <a href="index.php" class="btn btn-secondary">Home</a>
    <h3>Edit Data</h3>
    <form name="update_user" method="post" action="" enctype="multipart/form-data">
        <div class="form-group">
            <label>Picture (Kosongkan jika tidak ingin mengganti)</label><br>
            <img src="picture/<?php echo $picture; ?>" width="100"><br><br>
            <input type="file" name="picture" class="form-control-file">
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="<?php echo $name; ?>" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Category</label>
            <input type="text" name="category" value="<?php echo $category; ?>" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Publisher</label>
            <input type="text" name="publisher" value="<?php echo $publisher; ?>" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Count</label>
            <input type="number" name="count" value="<?php echo $count; ?>" class="form-control" required>
        </div>
        <button type="submit" name="update" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>
