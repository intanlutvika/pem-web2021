<?php
$host       = "localhost";
$user       = "root";
$pass       = "";
$db         = "yellowstore";

$koneksi    = mysqli_connect($host, $user, $pass, $db);

$alamat        = "";
$nama       = "";
$pengguna   = "";
$profesi     = "";
$peran     = "";
$sukses     = "";
$error      = "";

if (isset($_GET['op'])) {
    $op = $_GET['op'];
} else {
    $op = "";
}
if ($op == 'delete') {
    $id         = $_GET['id'];
    $sql1       = "delete from data where id = '$id'";
    $q1         = mysqli_query($koneksi, $sql1);
    if ($q1) {
        $sukses = "Berhasil hapus data";
    } else {
        $error  = "Gagal melakukan delete data";
    }
}
if ($op == 'edit') {
    $id         = $_GET['id'];
    $sql1       = "select * from data where id = '$id'";
    $q1         = mysqli_query($koneksi, $sql1);
    $r1         = mysqli_fetch_array($q1);
    $alamat        = $r1['alamat'];
    $nama       = $r1['nama'];
    $pengguna   = $r1['pengguna'];
    $profesi      = $r1['profesi'];
    $peran     = $r1['peran'];

    if ($nim == '') {
        $error = "Data tidak ditemukan";
    }
}
if (isset($_POST['simpan'])) { //untuk create
    $alamat        = $_POST['alamat'];
    $nama       = $_POST['nama'];
    $pengguna   = $_POST['pengguna'];
    $profesi      = $_POST['profesi'];
    $peran     = $_POST['peran'];

    if ($alamat && $nama && $pengguna && $profesi && $peran) {
        if ($op == 'edit') { //untuk update
            $sql1       = "update data set alamat = '$alamat',nama='$nama',pengguna='$pengguna',profesi='$profesi', peran='$peran' where id = '$id'";
            $q1         = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses = "Data berhasil diupdate";
            } else {
                $error  = "Data gagal diupdate";
            }
        } else { //untuk insert
            $sql1   = "insert into data(alamat,nama,pengguna,profesi,peran) values ('$alamat','$nama','$pengguna','$profesi', '$peran')";
            $q1     = mysqli_query($koneksi, $sql1);
            if ($q1) {
                $sukses     = "Berhasil memasukkan data baru";
            } else {
                $error      = "Gagal memasukkan data";
            }
        }
    } else {
        $error = "Silakan masukkan semua data";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <style>
        .mx-auto {
            width: 800px
        }

        .card {
            margin: 20px 0;
            background-color: #f2d600;
        }
        header h1{
            padding-top: 20px;
        }
        header img {
            height: 50px;
            width: 50px;
        }
    </style>
</head>

<body>
<header>
		<div class="container">
			<h1><a href="index.php">
				
			Welcome to Yellow Store</a></h1>
			<ul>
				<li><a href="index.php" class="btn-tamu">Home</a></li>
			</ul>
		</div>
	</header>
    <div class="mx-auto">
        <!-- untuk memasukkan data -->
        <div class="card">
            <div class="card-header">
                Daftar Tamu Yellow Store
            </div>
            <div class="card-body">
                <?php
                if ($error) {
                ?>
                    <div class="alert alert-danger" role="alert">
                        <?php echo $error ?>
                    </div>
                <?php
                    header("refresh:1;url=tamu.php"); //5 : detik
                }
                ?>
                <?php
                if ($sukses) {
                ?>
                    <div class="alert alert-success" role="alert">
                        <?php echo $sukses ?>
                    </div>
                <?php
                    header("refresh:1;url=tamu.php");
                }
                ?>
                <form action="" method="POST">
                    <div class="mb-3 row">
                        <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $nama ?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="nama" class="col-sm-2 col-form-label">Alamat</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="alamat" name="alamat" value="<?php echo $alamat ?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="fakultas" class="col-sm-2 col-form-label">Pengguna</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="pengguna" id="pengguna">
                                <option value="">- Pilih Pengguna -</option>
                                <option value="Baru" <?php if ($pengguna == "baru") echo "selected" ?>>Pengguna Baru</option>
                                <option value="Lama" <?php if ($pengguna == "lama") echo "selected" ?>>Pengguna Lama</option>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="judul" class="col-sm-2 col-form-label">Profesi</label>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Mahasiswa atau Pelajar" name="profesi" id="flexCheckChecked" checked <?php if ($profesi == "Mahasiswa atau Pelajar") echo "selected" ?>>
                                <label class="form-check-label" for="profesi">
                                    Mahasiswa atau Pelajar
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Karyawan" name="profesi" id="flexCheckDefault" <?php if ($profesi == "Karyawan") echo "selected" ?>>
                                <label class="form-check-label" for="profesi">
                                    Karyawan
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Pengusaha" name="profesi" id="flexCheckDefault" <?php if ($profesi == "Pengusaha") echo "selected" ?>>
                                <label class="form-check-label" for="profesi">
                                    Pengusaha
                                </label>
                            </div>
                        </div>
                        
                    </div>
                    <div class="mb-3 row">
                        <label for="alamat" class="col-sm-2 col-form-label">Peran</label>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="Pembeli" name="peran" id="flexRadioDefault1" <?php if ($peran == "Pembeli") echo "selected" ?>>
                                <label class="form-check-label" for="peran">
                                    Pembeli
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="Penjual" name="peran" id="flexRadioDefault2" checked <?php if ($peran == "Penjual") echo "selected" ?>>
                                <label class="form-check-label" for="peran">
                                    Penjual
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <input type="submit" name="simpan" value="Simpan Data" class="btn btn-success" />
                    </div>
                </form>
            </div>
        </div>

        <!-- untuk mengeluarkan data -->
        <div class="card">
            <div class="card-header text-white bg-secondary">
                Data Pengunjung Yellow Store
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">No.</th>
                            <th scope="col">NAMA</th>
                            <th scope="col">ALAMAT</th>
                            <th scope="col">PENGGUNA</th>
                            <th scope="col">PROFESI</th>
                            <th scope="col">PERAN</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql2   = "select * from data order by id desc";
                        $q2     = mysqli_query($koneksi, $sql2);
                        $urut   = 1;
                        while ($r2 = mysqli_fetch_array($q2)) {
                            $id         = $r2['id'];
                            $alamat        = $r2['alamat'];
                            $nama       = $r2['nama'];
                            $pengguna   = $r2['pengguna'];
                            $profesi      = $r2['profesi'];
                            $peran      = $r2['peran'];

                        ?>
                            <tr>
                                <th scope="row"><?php echo $urut++ ?></th>
                                <td scope="row"><?php echo $alamat ?></td>
                                <td scope="row"><?php echo $nama ?></td>
                                <td scope="row"><?php echo $pengguna ?></td>
                                <td scope="row"><?php echo $profesi ?></td>
                                <td scope="row"><?php echo $peran ?></td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>

                </table>
            </div>
        </div>
    </div>
    <div class="footer">
		<div class="container">
        <?php
            echo "Waktu Akses " . date("Y M D h:i:sa");
            ?>
		</div>
		<small>Copyright &copy; 2022 || Yellow Store</small>
	</div>
</body>

</html>