<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Yellow Store</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">

    <style>
        h1{
            margin-top: 20px;
        }
        h5{
            margin: 15px 0;
        }
        .image{
            position: relative;
            width: 200px;
            height: 200px;
            justify-content: center;
            left: 430px;
            margin: 20px 0;
        }
    </style>
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<h1><a href="index.php">
				<img src="./img/logo.png" alt="">
				
			Yellow Store</a></h1>
			
			<div class="search">
					<form action="produk.php">
						<input type="text" name="search" placeholder="Cari Produk">
						<input type="submit" name="cari" value="Cari Produk">
					</form>
			</div>
			<ul>
				<li><a href="index.php" class="btn-tamu">Home</a></li>
				<li><a href="tamu.php" class="btn-tamu">Buku Tamu</a></li>
			</ul>
		</div>
	</header>


    <div class="container">
        <h1 style="text-align: center;">About us</h1>
        <img class="image" src="./img/logo.png" alt="">
        <h5>Yellow Store merupakan perusahaan e-Commerceterbesar di Indonesia. Kami memiliki keunggulan bisnis pada kapabilitas Pembangunan dan rancang-bangun Produk Konsumsi dan Cloud Computing; Pembangunan dan Maintenance website, Repair, dan Overhaul (MRO) Internet; Maintenance, Repair, dan Overhaul Internet, Jasa Niaga, dan produk-produk Konsumsi; General Engineering produk Internet dan Elektrifikasi; dan Technology Development.</h5>
        <h5>Cikal bakal Yellow Store dimulai sejak berdirinya PT. Tokopedia dan Shopee Indonesia yang diresmikan oleh Pemerintah Indonesia. Setelah kemerdekaan, Pemerintah Indonesia menasionalisasi perusahaan ini dan mengubah namanya menjadi Yellow Store. Kemudian pada tanggal 15 April 2019, berdasarkan Peraturan Pemerintah Nomor 4 Tahun 2016, status perusahaan berubah dari Perusahaan Umum menjadi Perseroan Terbatas.</h5>
        <h5>Sejak tahun 2015 hingga 2019 kami telah memproduksi 232 unit Software di mana 86 unit diantaranya merupakan Hasil Production. Hingga saat ini kami telah mengekspor 45 unit Software baik Software jadi maupun belum jadi. Sejak tahun 2016 hingga tahun 2019 kami telah memproduksi total 282 produk aplikasi dan development seperti Barge Mounted Power Plant, Wellhead Platform, dan lainnya.</h5>
        <h5>Upaya Yellow Store ini merupakan langkah besar Indonesia untuk memasuki industri global bidang Internet. Dengan posisinya sebagai pemandu E-Commerce indonesia, maka pada masa mendatang Yellow Store akan terus meningkatkan kemampuannya untuk dapat berperan dalam Driving development. Peran penting Yellow Store ini akan membawa industri digital Indonesia pada pasar digital global.</h5>
    </div>



    <div class="footer" style="margin-top:50px;">
		<div class="container">
		<?php
			echo "Waktu Akses " . date("Y M D h:i:sa");
			?>
		</div>
		<small>Copyright &copy; 2022 || Yellow Store</small>
	</div>
</body>
</html>