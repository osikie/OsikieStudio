<?php
include "config/koneksi.php";
	if ($_GET["simpan"]=="1"){
	mysql_query("INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES (NULL, '$_POST[nama]', '$_POST[email]', '$_POST[subjek]', '$_POST[pesan]', now())");	
	$echo="data telah tersimpan $_POST[pesan]$_POST[subjek] NOW() $_POST[email] $_POST[nama]";		
	}	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>::OSIKIE STUDIO PHOTOGRAPHY::</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
<!-- Shell -->
<div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">osikie</a></h1>
    <!-- Cart -->
   
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
    
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="produk.php">Produk</a></li>
        <li><a href="tengah.php?module=keranjangbelanja">Keranjang Belanja</a></li>
        <li><a href="cara-pemesanan.php">Cara Pemesanan </a></li>
        <li><a href="hubungi-kami.php">Hubungi Kami</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
     
      <!-- Content Slider -->
      <div id="slider" class="box">
        <div id="slider-holder">
          <ul>
            <li><a href="#"><img src="css/images/slide.jpg" alt="" /></a></li>
            <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
            <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
            <li><a href="#"><img src="css/images/slide3.jpg" alt="" /></a></li>
          </ul>
        </div>
        <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> </div>
      </div>
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
     <h1> Hubungi Kami</h1>
     &nbsp;
     <table width="100%" border="0">
<form  method="POST" action="hubungi-kami.php?simpan=1">
  <tr>
    <td>Nama</td>
    <td>:
      <input type="text" name="nama" id="nama" size="30"></td>
       
       <tr><td>Email</td>
    <td>:
      <input type="text" name="email" size="30" id="email"></td>
      <tr><td>Subjek</td>
    <td>:
      <input type="text" name="subjek" size="30" id="email"></td>
        </tr><td>Pesan</td>
      <td>:
        <textarea name="pesan" class="contact_textarea" ></textarea>
        </td>
  </tr>
  
  <tr>
    <td width="130">&nbsp;</td>
    <td width="256"><input type="submit" name="Submit" value="Submit">
      <input type="reset" name="Reset" value="Reset" /></td>
  </tr>
  <tr>
    <td colspan="2" height="15"></td>
    </tr>
</table>
     
     
      </div>
      <!-- End Products -->
      
    </div>
    <!-- End Content -->     
      <!-- End Products -->
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
    <div id="sidebar">
   
      <!-- Search -->
      <div class="box search">
        <h2>Search<span></span></h2>
        <div class="box-content">
          <form action="hasil-pencarian.php" method="POST">
            <label>Keyword</label>
            <input type="text" name="q"  class="field" />                            
            <input type="submit" name="Search"  class="search-submit" value="Search" />
          </form>
              </div>
      <!-- End Search -->
      <!-- Categories -->
       <div class="box categories">
        <h2>Kategori <span></span></h2>
        <div class="box-content">
         <ul class="categories_list">
            <?php
			include "config/koneksi.php";
            $kategori=mysql_query("select * from kategori order by id_kategori ASC");
            $no=1;
            while($k=mysql_fetch_array($kategori)){
                echo "<li><a href='content.php?act=getproduk&idkategori=$k[id_kategori]'> $k[nama_kategori]</a></li>";    
              $no++;
            }
            ?>
        </ul>
        </div>   
       </div>
      </div>
      </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  </div>
  <!-- End Main -->
  <!-- Side Full -->
  <div class="side-full">
    <!-- More Products -->
    <!-- End More Products -->
    <!-- Text Cols -->
    <div class="cols">
     </div>
    <!-- End Text Cols -->
  </div>
  <!-- End Side Full -->
  <!-- Footer -->
   <div id="footer">
    <p class="left"> <a href="index.php">Home</a> <span>|</span> <a href="cara-pemesanan.php">Cara Pemesanan</a> <span>|</span> <a href="hubungi-kami.php">Hubungi Kami</a> <span>|</span> <a href="produk.php">Produk</a> </p>
     <p class="right">  &copy; 2013 Osikie Studio Photography. Design by Osie Kie</a> </p>
  </div>
 
  <!-- End Footer -->
</div>
<!-- End Shell -->
</body>
</html>
