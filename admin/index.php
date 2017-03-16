<?php
session_start();
if(!isset($_SESSION['nama'])){
	echo "<script>alert('Silahkan login terlebih dahulu')</script>";
	echo "<meta http-equiv='refresh' content='0; url=../index.php'>";
} else {

?>
<!DOCTYPE html> 
<html lang="en"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistem Informasi Perpustakaan </title>
<link rel="stylesheet" type="text/css" href="../images/style.css" />
</head>

<body>
<!-- menu main sebagai div Utama -->

<div id="main_logo">
	<!-- menu Header -->
    <div id="logo">
    <div class="col-md-5 text-left">
      <div class="logo">
       <img src="../images/logo.png"  alt="logo" height="100" wight="100" style="margin-left: 1px;margin-top:10px"></a>
    <!-- menu Header -->
    <div id="menu-atas">
    	<div id="menu_user">
        <span><?=$_SESSION['nama'];?></span>
        </div>
        <div id="menu_tanggal" align="right">
        <span><?php
		 	$array_hr= array(1=>"Senin","Selasa","Rabu","Kamis","Jumat","Sabtu","Minggu");
 			$hr = $array_hr[date('N')];
			$tgl= date('j');
			$array_bln = array(1=>"Januari","Februari","Maret", "April", "Mei","Juni","Juli","Agustus","September","Oktober", "November","Desember");
			$bln = $array_bln[date('n')];
			$thn = date('Y');
			echo $hr . ", " . $tgl . " " . $bln . " " . $thn . " ";
			?>
        </span>
        </div>
    </div>
    
    
<div>    
    <!-- menu Kiri -->
 	<div id="menu-kiri">
    	<div id="bg_menu">Menu Utama
    	</div>
    	
    	<ul id="left_menu">
        	<li><a href="index.php" class="menu">&raquo; Home </a> <br /></li>
        	<li><a href="?page=buku" class="menu">&raquo;Data Buku </a> <br /></li>
        	<li><a href="?page=anggota" class="menu">&raquo;Data Anggota </a> <br /></li>
        	<li><a href="?page=transaksi" class="menu">&raquo;Data Transaksi </a> <br /></li>
            <li><a href="?page=laporan" class="menu">&raquo;Data Laporan </a> <br /></li>
            <li><a href="?page=user" class="menu">&raquo;Data User </a> <br /></li>
            <li><a href="../logout.php" class="menu">&raquo; Logout </a> <br /></li>
         </ul>
        </div>
    </div>
	    
    	     <?php
				 error_reporting(0);
				 switch($_GET['page'])
				 	{
						default:
						include "../home.php";
						break;
						
						// menu buku				
						case "buku";
						include "buku_data.php";
						break;
						case "detil-buku";
						include "buku_detil.php";
						break;
						case "buku_input";
						include "buku_input.php";
						break;
						case "buku_proses";
						include "buku_proses.php";
						break;
						case "buku_search";
						include "buku_search.php";
						break;
						case "buku_edit";
						include "buku_edit.php";
						break;
						case "buku_proses_edit";
						include "buku_proses_edit.php";
						break;
						case "buku_hapus";
						include "buku_hapus.php";
						break;
												
						// anggota
						case "anggota";
						include "anggota_data.php";
						break;
						case "anggota_detil";
						include "anggota_detil.php";
						break;
						case "anggota_input";
						include "anggota_input.php";
						break;
						case "anggota_proses";
						include "anggota_proses.php";
						break;
						case "anggota_search";
						include "anggota_search.php";
						break;
						case "anggota_edit";
						include "anggota_edit.php";
						break;
						case "anggota_proses_edit";
						include "anggota_proses_edit.php";
						break;
						case "anggota_hapus";
						include "anggota_hapus.php";
						break;
						
						
						// transaksi
						case "transaksi";
						include "../transaksi_data.php";
						break;
						case "transaksi_input";
						include "../transaksi_input.php";
						break;
						case "transaksi_proses";
						include "../transaksi_proses.php";
						break;
						case "transaksi_search";
						include "../transaksi_search.php";
						break;
						case "transaksi_proses_kembali";
						include "../transaksi_proses_kembali.php";
						break;
						case "transaksi_proses_perpanjang";
						include "../transaksi_proses_perpanjang.php";
						break;
						
						
						// laporan
						case "laporan";
						include "../laporan.php";
						break;
						
						// User
						case "user";
						include "user_data.php";
						break;
						case "user_search";
						include "user_search.php";
						break;
						case "user_input";
						include "user_input.php";
						break;
						case "user_proses";
						include "user_proses.php";
						break;
						case "user_detil";
						include "user_detil.php";
						break;
						case "user_edit";
						include "user_edit.php";
						break;
						case "user_proses_edit";
						include "user_proses_edit.php";
						break;
						case "user_hapus";
						include "user_hapus.php";
						break;
					
					}
			?>

    
</div>
    <!-- menu Merapikan div content -->
    <div class="clear">
   	</div>
    
  	<!-- menu Footer -->
    <div id="footer"><center>Rekayasa Perangkat Lunak UAS &copy; 2017</center></div>
    
</div>

</body>
</html>

<?php } ?>