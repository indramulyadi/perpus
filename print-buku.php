<html>
<body onLoad="window.print();">
   <?php
   include 'conn/koneksi.php';
   ?>

<style type="text/css">
body {
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
}
.style1{
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;	
}
</style>

			<p align="center">LAPORAN DATA BUKU PERPUSTAKAAN STT - PLN JAKARTA</p>
   			<table width="100%" align="center" cellspacing="0" cellpadding="2" border="1px" class="style1">
   	    
   	          <tr>
   	            <td width="4%" height="34" align="center" bgcolor="#dddb34">No</td>
   	            <td width="21%"  align="center" bgcolor="#dddb34">Judul Buku</td>
   	            <td width="16%"  align="center" bgcolor="#dddb34">Pengarang</td>
   	            <td width="14%"  align="center" bgcolor="#dddb34">Penerbit</td>
                <td width="15%" align="center" bgcolor="#dddb34">Tahun Terbit</td>
                <td width="15%"  align="center" bgcolor="#dddb34">Kode ISBN</td>
   	            <td width="7%"  align="center" bgcolor="#dddb34">Jumlah</td>
                <td width="8%"  align="center" bgcolor="#dddb34">Lokasi</td>
              </tr>
            <?php
				$query = "SELECT * FROM tbl_buku ORDER by judul";
				$sql = mysql_query($query);
				$total = mysql_num_rows($sql);
				$no = 1;
				
				while ($data=mysql_fetch_array($sql)) {
			?>
   	        <tbody>
   	          <tr>
   	            <td height="27" align="center"><?php echo $no; ?></td>
   	            <td align="center"><?php echo $data['judul']; ?></a>
   	            <td align="center"><?php echo $data['pengarang']; ?></td>
   	            <td align="center"><?php echo $data['penerbit']; ?></td>
                <td align="center"><?php echo $data['thn_terbit']; ?></td>
                <td align="center"><?php echo $data['isbn']; ?></td>
                <td align="center"><?php echo $data['jumlah_buku']; ?></td>
               	<td align="center"><?php echo $data['lokasi']; ?></td>
                
              </tr>
            <?php $no++; } ?>
            
            </tbody>
          </table>

</body>