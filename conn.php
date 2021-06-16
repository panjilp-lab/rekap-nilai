<?php
$host="localhost";
$user="root";
$pass="";
$db="db_akademik";

$entries=10;
$waktu=date("Y-m-d H:i:s");
error_reporting(0);
	
$koneksi=mysql_connect($host,$user,$pass);
mysql_select_db($db,$koneksi);

if($koneksi){
	//echo "Berhasil koneksi";
}else{
	echo "Gagal koneksi";
}
?>