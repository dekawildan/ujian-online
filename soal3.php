<?php
	session_start();
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
		<span id="waktu">
		</span>
		<section>
			<h2 align="center">SOAL NOMOR 3</h2>
			<?php
				if(!isset($_SESSION['nama'])) {
					header('location:index.php');
				} else {
					echo "<p>Selamat Datang <strong>".$_SESSION['nama']."</strong></p>";
					$baca=mysqli_query($koneksi,"select * from tbl_peserta where nama_peserta='$_SESSION[nama]'");
					$datapeserta=mysqli_fetch_array($baca);
					$bacaidpeserta=mysqli_query($koneksi,"SELECT * FROM tbl_soal WHERE id_peserta='$datapeserta[id]'");
					$bacasoal=mysqli_fetch_array($bacaidpeserta);
					if(mysqli_num_rows($bacaidpeserta) > 0) {

			?>
			<form method="post">
				<?php
				//<input type="hidden" name="kunci" value="A">
				?>
				<?php
					if($bacasoal['soal3'] == 'A') {
				?>
				<label>
					3. Serangkaian langkah-langkah yang disusun menjadi urutan logis kegiatan untuk mencapi tujuan adalah….  <br>
					a. <input type="radio" name="nomor1" value="A" checked="checked"> Algoritma<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Program<br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Urutan<br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Logika<br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Masuk akal<br>
				</label>
				<?php						
					} else if($bacasoal['soal3'] == 'B') {
				?>
				<label>
					3. Serangkaian langkah-langkah yang disusun menjadi urutan logis kegiatan untuk mencapi tujuan adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Algoritma<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B" checked="checked"> Program<br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Urutan<br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Logika<br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Masuk akal<br>
				</label>
				<?php
					}  else if($bacasoal['soal3'] == 'C') {
				?>
				<label>
					3. Serangkaian langkah-langkah yang disusun menjadi urutan logis kegiatan untuk mencapi tujuan adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Algoritma<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Program<br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C" checked="checked"> Urutan<br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Logika<br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Masuk akal<br>
				</label>
				<?php
					}  else if($bacasoal['soal3'] == 'D') {
				?>
				<label>
					3. Serangkaian langkah-langkah yang disusun menjadi urutan logis kegiatan untuk mencapi tujuan adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Algoritma<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Program<br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Urutan<br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D" checked="checked"> Logika<br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Masuk akal<br>
				</label>
				<?php
					}  else if($bacasoal['soal3'] == 'E') {
				?>
				<label>
					3. Serangkaian langkah-langkah yang disusun menjadi urutan logis kegiatan untuk mencapi tujuan adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Algoritma<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Program<br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Urutan<br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Logika<br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E" checked="checked"> Masuk akal<br>
				</label>
				<?php
					}  else  {
				?>
				<label>
					3. Serangkaian langkah-langkah yang disusun menjadi urutan logis kegiatan untuk mencapi tujuan adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Algoritma<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Program<br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Urutan<br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Logika<br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Masuk akal<br>
				</label>
				<?php
					}
				?>
				<label>
					<button class="button2" name="btnprev">< Kembali</button>
				</label>
				<label>
					<button class="button" name="btnsoal1">Lanjut soal ></button>
				</label>
			</form>
			<?php
					} else {
					$sqlsimpanid=mysqli_query($koneksi,"INSERT INTO tbl_soal (id,id_peserta) VALUES('','$datapeserta[id]')");
			?>
			<form method="post">
				<?php
				//<input type="hidden" name="kunci" value="A">
				?>
				<?php
					if($bacasoal['soal2'] == 'A') {
				?>
				<label>
					1. Syarat berfikir logis adalah….  <br>
					a. <input type="radio" name="nomor1" value="A" checked="checked"> Masuk akal<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Sesuai nurani <br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Bermental sosial <br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Serius <br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Genius<br>
				</label>
				<?php						
					} else if($bacasoal['soal2'] == 'B') {
				?>
				<label>
					1. Syarat berfikir logis adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Masuk akal<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B" checked="checked"> Sesuai nurani <br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Bermental sosial <br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Serius <br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Genius<br>
				</label>
				<?php
					}  else if($bacasoal['soal2'] == 'C') {
				?>
				<label>
					1. Syarat berfikir logis adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Masuk akal<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Sesuai nurani <br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C" checked="checked"> Bermental sosial <br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Serius <br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Genius<br>
				</label>
				<?php
					}  else if($bacasoal['soal2'] == 'D') {
				?>
				<label>
					1. Syarat berfikir logis adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Masuk akal<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Sesuai nurani <br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Bermental sosial <br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D" checked="checked"> Serius <br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Genius<br>
				</label>
				<?php
					}  else if($bacasoal['soal2'] == 'E') {
				?>
				<label>
					1. Syarat berfikir logis adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Masuk akal<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Sesuai nurani <br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Bermental sosial <br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Serius <br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E" checked="checked"> Genius<br>
				</label>
				<?php
					}  else  {
				?>
				<label>
					1. Syarat berfikir logis adalah….  <br>
					a. <input type="radio" name="nomor1" value="A"> Masuk akal<br>
				</label>
				<label>
					b. <input type="radio" name="nomor1" value="B"> Sesuai nurani <br>
				</label>
				<label>
					c. <input type="radio" name="nomor1" value="C"> Bermental sosial <br>
				</label>
				<label>
					d. <input type="radio" name="nomor1" value="D"> Serius <br>
				</label>
				<label>
					e. <input type="radio" name="nomor1" value="E"> Genius<br>
				</label>
				<?php
					}
				?>
				<label>
					<button class="button2" name="btnprev">< Kembali</button>
				</label>
				<label>
					<button class="button" name="btnsoal1">Lanjut soal ></button>
				</label>
			</form>
			<?php
					}
				if(isset($_POST['btnsoal1'])) {
					if(!empty($_POST['nomor1'])) {
						$sqlupdate=mysqli_query($koneksi,"UPDATE tbl_soal SET soal3='$_POST[nomor1]' WHERE id_peserta='$datapeserta[id]'");
						header('location:soal4.php');
					} else {
						echo '<h3 align="center">Maaf Jawaban belum dipilih</h3>';
					}
				} else if(isset($_POST['btnprev'])) {
					header('location:soal2.php');
				}
			}
			?>
		</section>
	</article>
	<div class="nomor_soal">
		<ul>
			<li><a href="soal1.php">1</a></li>
			<li><a href="soal2.php">2</a></li>
			<li><a href="soal3.php">3</a></li>
			<li><a href="soal4.php">4</a></li>
			<li><a href="soal5.php">5</a></li>
			<li><a href="soal6.php">6</a></li>
			<li><a href="soal7.php">7</a></li>
			<li><a href="soal8.php">8</a></li>
			<li><a href="soal9.php">9</a></li>
			<li><a href="soal10.php">10</a></li>
		</ul>
	</div>
	<div class="popup">
		<button class="button_popup" onclick="showsoal()">DAFTAR SOAL</button>
		<button class="button_popup2" onclick="hidesoal()">SEMBUNYIKAN</button>
	</div>
	<footer>
		<p align="center">Copyright &copy; 2019 Deka Wildan</p>
	</footer>
</body>
</html>