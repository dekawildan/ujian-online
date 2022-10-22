<?php
	session_start();
	unset($_SESSION['nama']);
	unset($_SESSION['startTime']);
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
			<h2 align="center">TERIMA KASIH TELAH MENYELESAIKAN ULANGAN</h2>
			<?php
				$selesai="Selesai";
				$_SESSION['selesai']=$selesai;
				echo "<h2 align='center' style='color:blue;'>ULANGAN ". strtoupper($_SESSION['selesai'])."</h2>";
			?>
		</section>
	</article>
	<footer>
		<p align="center">Copyright &copy; 2019 Deka Wildan</p>
	</footer>
</body>
</html>