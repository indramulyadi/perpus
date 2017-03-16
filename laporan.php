    <style type="text/css">
	.lap {
		text-decoration:none;
	}
	.table_input a:hover {
		color:#0FF;
	}
	</style>
	
	<?php include '../conn/koneksi.php'; ?>
    <!-- menu tengah -->
	<div id="menu-tengah">
    	<div id="bg_menu">Laporan
    	</div>
    	<div id="content_menu">
        <div id="menu_header">
        	<table width="100%" height="100%" style="background-color:#9cc;">
            	<tr>
                	<td align="center">All Laporan</td>
                </tr>
            
            </table>
        	
            
    	</div>
        
   	    <div class="table_input">
          <table width="100%" height="100%" align="center" cellpadding="2" border="0">
            <tbody>
                <tr>
                    <td class="img_home" align="center"><a href="../print-buku.php"><img src="../images/buku.png" width="100" height="100"></a><br /><center>Laporan Buku</center></td>
                    <td class="img_home" align="center"><a href="../print-anggota.php"><img src="../images/anggota.png" width="100" height="100"></a></a><br /><center>Laporan Anggota</center></td>
                    <td class="img_home" align="center"><a href="../print-transaksi.php"><img src="../images/user.ico" width="100" height="100"></a><br /><center>Laporan Transaksi</center></td>
                    
                </tr
                
            </tbody>
          </table>
 	      </div>
   	  </div>
    </div>
