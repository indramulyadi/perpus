<html>
<body onLoad="window.print();">
   <?php
   include 'conn/koneksi.php';
   ?>
   
		<p align="center">LAPORAN DATA ANGGOTA PERPUSTAKAAN STT - PLN JAKARTA</p>
   	      <table width="100%" align="center" cellspacing="0" cellpadding="2" border="1px" class="style1">
   	       
   	          <tr>
   	            <th width="5%" align="center" class="style1" bgcolor="#dddb34">No</th>
   	            <th width="30%" align="center" class="style1" bgcolor="#dddb34">Judul Buku</th>
   	            <th width="19%" align="center" class="style1" bgcolor="#dddb34">Peminjam</th>
   	            <th width="18%" align="center" class="style1" bgcolor="#dddb34">Tgl Pinjam</th>
   	            <th width="18%" align="center" class="style1" bgcolor="#dddb34">Tgl Kembali</th>
                <th width="10%" align="center" class="style1" bgcolor="#dddb34">Status</th>
              </tr>

            <?php
				$query = "SELECT * FROM tbl_transaksi ORDER by status";
				$sql = mysql_query($query);
				$no = 1;
				while ($data=mysql_fetch_array($sql)) {
			?>
   	        <tbody>
   	          <tr>
   	            <td align="center"><?php echo $no; ?></td>
   	            <td><?php echo $data['judul']; ?></td>
   	            <td><?php echo $data['nama']; ?></td>
   	            <td align="center"><?php echo $data['tgl_pinjam']; ?></td>
   	            <td align="center"><?php echo $data['tgl_kembali']; ?></td>  
   	            <td align="center"><?php echo $data['status']; ?></td>      
              </tr>    
            <?php $no++; } ?>
           
            </tbody>
          </table>
</body>
</html>