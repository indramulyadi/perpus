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
<title>Sistem Informasi Perpustakaan STT PLN </title>
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
        <span><?=$_SESSION['nama']; ?></span>
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
    	<div id="left_menu2">
        	<li><a href="index.php" class="menu">&raquo; Home </a></li>
        	<li><a href="?page=buku" class="menu">&raquo;Data Buku </a></li>
        	<li><a href="?page=info" class="menu">&raquo; Informasi </a></li>
        	<li><a href="../logout.php" class="menu">&raquo; Logout </a></li>
     
        </div>
    </div>
	    
    	     <?php
				 error_reporting(0);
				 switch($_GET['page'])
				 	{
						default:
						include "home.php";
						break;

						
						// menu buku
						case "buku";
						include "buku_data.php";
						break;
						case "buku_search";
						include "buku_search.php";
						break;
						case "detil-buku";
						include "buku_detil.php";
						break;
						
						// menu INformasi
						case "info";
						include "info.php";
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