<?php

include "conn.php";

if(isset($_POST['submit'])){
	
	$jumSis = $_POST['jumlah'];
	
	
	for ($i=1; $i<=$jumSis; $i++)
	{
	   $kehadiran = 0.15*(($_POST['kehadiran'.$i]/16)*100);
	   $tugas = 0.15 * $_POST['tugas'.$i];
	   $ulangan = 0.15 * $_POST['ulangan'.$i];
	   $uts = 0.25 * $_POST['uts'.$i];
	   $uas = 0.30 * $_POST['uas'.$i];

	   $kehadiran_t = $_POST['kehadiran'.$i];
	   $tugas_t = $_POST['tugas'.$i];
	   $ulangan_t = $_POST['ulangan'.$i];
	   $uts_t = $_POST['uts'.$i];
	   $uas_t = $_POST['uas'.$i];
	   $nilai  = $kehadiran + $tugas + $ulangan + $uts + $uas;
	   
	   $id_siswa = $_POST['id_siswa'.$i];
	   $id_guru = $_POST['id_guru'];
	   $id_kelas = $_POST['id_kelas'];
	   $id_pelajaran = $_POST['id_pelajaran'];
	
	   $query = "UPDATE tbl_nilai set kehadiran = '$kehadiran_t', tugas='$tugas_t', ulangan='$ulangan_t', uts='$uts_t', uas='$uas_t', nilai='$nilai' where id_siswa='$id_siswa' and id_pelajaran='$id_pelajaran' and id_kelas='$id_kelas' and id_guru='$id_guru'";
	   $hasil=mysql_query($query);
	}
	
	if($hasil){
		?><script language="javascript">document.location.href="?page=input_nilai_selesai&id_guru=<?php echo $id_guru;?>&id_kelas=<?php echo $id_kelas;?>&id_pelajaran=<?php echo $id_pelajaran;?>";</script><?php
	}else{
		?><script language="javascript">document.location.href="?page=input_nilai_selesai&status=0";</script><?php
	}
	
	
}else{
	unset($_POST['submit']);
}

?>

<!--  start page-heading -->
<div id="page-heading">
    <h1>Input Nilai</h1>
</div>
<!-- end page-heading -->



<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
    <th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
    <th class="topleft"></th>
    <td id="tbl-border-top">&nbsp;</td>
    <th class="topright"></th>
    <th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
    <td id="tbl-border-left"></td>
    <td>
    <!--  start content-table-inner ...................................................................... START -->
    <div id="content-table-inner">
    		
            <?php
			if($_GET['status']=='1'){
			?>
			
            <div id="message-green">
            <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr>
                <td class="green-left">Alhamdulilah sesuatu banget, Data berhasil disimpan :)</td>
                <td class="green-right"><a class="close-green"><img src="images/table/icon_close_green.gif"   alt="" /></a></td>
            </tr>
            </table>
            </div>
            
			<?php
			}
			
			if($_GET['status']=='0'){
			?>

            <div id="message-red">
            <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr>
                <td class="red-left"><?php echo mysql_error();?></td>
                <td class="red-right"><a class="close-red"><img src="images/table/icon_close_red.gif"   alt="" /></a></td>
            </tr>
            </table>
            </div>
            
			<?php
			}
			?>


      	<!--  start product-table ..................................................................................... -->
        
        <!--  start step-holder -->
		<div id="step-holder">
			
		    <div class="step-no-off">1</div>
			<div class="step-light-left"><a href="?page=input_nilai">Pilih Mata Pelajaran</a></div>
			<div class="step-light-right">&nbsp;</div>
            
            <div class="step-no">2</div>
			<div class="step-dark-left">Update Nilai Siswa</div>
			<div class="step-dark-right">&nbsp;</div>
            
            
			<div class="step-no-off">3</div>
			<div class="step-light-left">Selesai</div>
			<div class="step-light-round">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->
	
    	<?php
		
		$id_guru=$_GET['id_guru'];
		$id_kelas=$_GET['id_kelas'];
		$id_pelajaran=$_GET['id_pelajaran'];
		
		$guru=mysql_fetch_array(mysql_query("select * from data_guru where id_guru='$id_guru'"));
		$kelas=mysql_fetch_array(mysql_query("select * from setup_kelas where id_kelas='$id_kelas'"));
		$pelajaran=mysql_fetch_array(mysql_query("select * from setup_pelajaran where id_pelajaran='$id_pelajaran'"));
		
		$nama_guru=$guru['nama_guru'];
		$nama_kelas=$kelas['nama_kelas'];
		$nama_pelajaran=$pelajaran['nama_pelajaran'];
		
		?>
    
    
        <table border="0" cellpadding="0" cellspacing="0"  id="id-form">
        <tr>
          <th valign="top">Nama Guru</th>
          <td><input type="text" class="inp-form" name="nama_siswa" value="<?php echo $nama_guru;?>" disabled="disabled"/></td>
          <td></td>
        </tr>
         <tr>
          <th valign="top">Pelajaran</th>
          <td><input type="text" class="inp-form" name="telpon_siswa" value="<?php echo $nama_pelajaran;?>" disabled="disabled"/></td>
          <td></td>
        </tr>
        <tr>
          <th valign="top">Kelas</th>
          <td><input type="text" class="inp-form" name="nis" value="<?php echo $nama_kelas;?>" disabled="disabled"/></td>
          <td></td>
        </tr>
      </table>
      <br />
      
        <form id="mainform" action="home.php?page=input_nilai_update" method="post">
        <table border="0" width="48%" cellpadding="0" cellspacing="0" id="product-table">
        <tr>
            <th width="10%" class="table-header-repeat line-left minwidth-1"><a href="">Nomor</a>	</th>
            <th width="60%" class="table-header-repeat line-left minwidth-1"><a href="">Nama Siswa</a></th>
            <th width="60%" class="table-header-repeat line-left minwidth-1"><a href="">NIS</a></th>
            <th width="30%" class="table-header-repeat line-left minwidth-1"><a href="">Kehadiran</a></th>
            <th width="30%" class="table-header-repeat line-left minwidth-1"><a href="">Tugas</a></th>
            <th width="30%" class="table-header-repeat line-left minwidth-1"><a href="">Ulangan</a></th>
            <th width="30%" class="table-header-repeat line-left minwidth-1"><a href="">UTS</a></th>
            <th width="30%" class="table-header-repeat line-left minwidth-1"><a href="">UAS</a></th>
            <th width="30%" class="table-header-repeat line-left minwidth-1"><a href="">Nilai</a></th>
        </tr>
        
        
        <?php
		$view=mysql_query("SELECT * FROM tbl_nilai nilai, data_siswa siswa WHERE nilai.id_siswa=siswa.id_siswa and nilai.id_guru='$id_guru' and nilai.id_kelas='$id_kelas' and nilai.id_pelajaran='$id_pelajaran' order by siswa.nama_siswa asc");
		
		$i = 1;
		while($row=mysql_fetch_array($view)){
			?>
            <input type="hidden" name="id_guru" value="<?php echo $id_guru;?>" />
			<input type="hidden" name="id_pelajaran" value="<?php echo $id_pelajaran;?>" />	
			<input type="hidden" name="id_kelas" value="<?php echo $id_kelas;?>" />
            <?php echo "<input type='hidden' name='id_siswa".$i."' value='".$row['id_siswa']."' />"; ?>
			<tr>
				<td><?php echo $i;?></td>
				<td><?php echo $row['nama_siswa'];?></td>
				<td><?php echo $row['nis'];?></td>
				<td><?php echo "<input type='text' name='kehadiran".$i."' value='".$row['kehadiran']."' size='2' />"; ?> Hari</td>
				<td><?php echo "<input type='text' name='tugas".$i."' value='".$row['tugas']."' size='5' />"; ?></td>
				<td><?php echo "<input type='text' name='ulangan".$i."' value='".$row['ulangan']."' size='5' />"; ?></td>
				<td><?php echo "<input type='text' name='uts".$i."' value='".$row['uts']."' size='5' />"; ?></td>
				<td><?php echo "<input type='text' name='uas".$i."' value='".$row['uas']."' size='5' />"; ?></td>
				<td><input type="text" name="nilai" value="<?php echo $row['nilai']; ?>" size='5' readonly></td>
			</tr>
			<?php
			$i++;
		}
			$jumSis = $i-1;
		?>
        <input type="hidden" name="jumlah" value="<?php echo $jumSis ?>" />
        <tr>
            <td colspan="9" align="center"><input type="submit" onclick="return confirm('Apakah Anda yakin?')" value="Update" name="submit"/></td>
        </tr>
        </table>
        <!--  end product-table................................... --> 
        </form>
		
        
        
	<div class="clear"></div>
     
    </div>
    <!--  end content-table-inner ............................................END  -->
    </td>
    <td id="tbl-border-right"></td>
</tr>
<tr>
    <th class="sized bottomleft"></th>
    <td id="tbl-border-bottom">&nbsp;</td>
    <th class="sized bottomright"></th>
</tr>
</table>
