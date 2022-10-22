<?php
	session_start();
	if(!empty($_SESSION['selesai'])) {
		header('location:logout.php');
	}
	include "db/config.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Ulangan Online</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="#990000">
	<meta name="apple-mobile-web-app-title" content="Ulangan Harian Online">
	<meta name="author" content="Deka Wildan">
	<meta name="version" content="1.0.0">
	<meta name="description" content="Ujian Online">
	<link rel="stylesheet" type="text/css" href="asset/layout.css">
	<script type="text/javascript" src="asset/script.js"></script>
</head>
<body>
	<header>
		<h1 align="center">APLIKASI ULANGAN ONLINE SIMULASI DAN KOMUNIKASI DIGITAL</h1>
	</header>
	<article>
		<section>
			<h2 align="center">REGISTRASI PESERTA ULANGAN</h2>
			<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
				<label>Nama Anda :
					<input type="text" name="nama_peserta" placeholder="Nama Peserta..." required="required" autofocus="autofocus" class="input">
				</label>
				<label>
					Kelas : 
					<select name="kelas">
						<option>X TKJ 1</option>
						<option>X TKJ 2</option>
						<option>X RPL</option>
						<option>XI RPL</option>
					</select>
				</label>
				<label></label>
				<label>
					<button class="button" name="btnuser">Masuk Ke Soal ></button>
				</label>
			</form>
			<?php
				if(isset($_POST['btnuser'])) {
					$nama_peserta=$_POST['nama_peserta'];
					$kelas=$_POST['kelas'];
					$sql="INSERT INTO tbl_peserta VALUES('','$nama_peserta','$kelas')";
					$simpansql=mysqli_query($koneksi,$sql);
					$_SESSION['nama']=$nama_peserta;
					header('location:soal1.php');
				}
			?>
		</section>
	</article>
	<footer>
		<p align="center">Copyright &copy; 2019 Deka Wildan</p>
	</footer>
</body>
</html>