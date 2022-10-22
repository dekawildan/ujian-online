<?php
$koneksi=mysqli_connect("localhost","root","","ujian_online") or die("Gagal koneksi");
mysqli_select_db($koneksi,"ujian_online") or die("Gagal memilih database");