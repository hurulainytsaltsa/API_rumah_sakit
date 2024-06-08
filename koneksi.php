<?php

$koneksi = mysqli_connect("localhost", "root", "", "rumahsakit");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>