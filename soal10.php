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
			<h2 align="center">SOAL NOMOR 10</h2>
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
				//<input type="hidden" name="kunci" value="blender, autodesk 3ds max, autodesk maya, cinema 4d, zbrush, posser">
				?>
				<?php
					if($bacasoal['soal10'] != null) {
				?>
				<label>
					10. Sebutkan macam - macam software yang digunakan untuk membuat animasi 2D dan 3D minimal 3....  <br>
					<textarea name="soal10" placeholder="Isikan jawaban anda..."><?php echo $bacasoal['soal10']; ?></textarea>
				</label>
				<?php						
					} else {
				?>
				<label>
					10. Sebutkan macam - macam software yang digunakan untuk membuat animasi 2D dan 3D minimal 3....  <br>
					<textarea name="soal10" placeholder="Isikan jawaban anda..."></textarea>
				</label>
				<?php
					} 
				?>
				<label>
					<button class="button2" name="btnprev">< Kembali</button>
				</label>
				<label>
					<input type="checkbox" name="tos" value="Tos"> Dengan mencentang cek di samping, anda selesai mengerjakan soal
				</label>
				<label>
					<button class="button_finish" name="btnsoal1">Selesai</button>
				</label>
			</form>
			<?php
					} else {
					$sqlsimpanid=mysqli_query($koneksi,"INSERT INTO tbl_soal (id,id_peserta) VALUES('','$datapeserta[id]')");
			?>
			<form method="post">
				<?php
				//<input type="hidden" name="kunci" value="blender, autodesk 3ds max, autodesk maya, cinema 4d, zbrush, posser">
				?>
				<?php
					if($bacasoal['soal10'] != null) {
				?>
				<label>
					10. Sebutkan macam - macam software yang digunakan untuk membuat animasi 2D dan 3D minimal 3....  <br>
					<textarea name="soal10" placeholder="Isikan jawaban anda..."><?php echo $bacasoal['soal10']; ?></textarea>
				</label>
				<?php						
					} else {
				?>
				<label>
					10. Sebutkan macam - macam software yang digunakan untuk membuat animasi 2D dan 3D minimal 3....  <br>
					<textarea name="soal10" placeholder="Isikan jawaban anda..."></textarea>
				</label>
				<?php
					} 
				?>
				<label>
					<button class="button2" name="btnprev">< Kembali</button>
				</label>
				<label>
					<input type="checkbox" name="tos" value="Tos"> Dengan mencentang cek di samping, anda selesai mengerjakan soal
				</label>
				<label>
					<button class="button_finish" name="btnsoal1">Selesai</button>
				</label>
			</form>
			<?php
					}
				if(isset($_POST['btnsoal1'])) {
					if(!empty($_POST['soal10']) && !empty(isset($_POST['tos']))) {
						$sqlupdate=mysqli_query($koneksi,"UPDATE tbl_soal SET soal10='$_POST[soal10]' WHERE id_peserta='$datapeserta[id]'");
						/*
						$sqldatapeserta=mysqli_query($koneksi,"SELECT * FROM tbl_peserta WHERE nama_peserta='$_SESSION[nama]'");
						$bacadatapeserta=mysqli_fetch_array($sqldatapeserta);
						$cekdata=mysqli_query($koneksi,"select * from tbl_soal where soal1 is null or soal2 is null or soal3 is null or soal4 is null or soal5 is null or soal6 is null or soal7 is null or soal8 is null or soal9 is null or soal10 is null and id_peserta='$bacadatapeserta[id]'");
						if(mysqli_num_rows($cekdata) > 0) {
							echo '<h3 align="center">Maaf Jawaban masih ada yang belum lengkap</h3>';
						} else {
							
						}
						*/
						header('location:logout.php');
					} else {
						echo '<h3 align="center">Maaf Jawaban belum diisi atau tanda centang selesai ujian belum tercentang</h3>';
					}
				} else if(isset($_POST['btnprev'])) {
					header('location:soal9.php');
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