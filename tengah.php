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
        <li><a href="cara-pembelian.php">Cara Pembelian </a></li>
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
      <!-- End Products -->
       <div class="content_section">
        
        	<h2>Keranjang Belanja</h2>
<?php
include "keranjangku.php";
?>

        </div> <!-- end of templatmeo_content -->
<div class="cleaner"></div>
       <?php
	$jmldata = mysql_num_rows(mysql_query("SELECT * FROM produk"));
	$jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
    $linkHalaman = $p->navHalaman($_GET[halaman], $jmlhalaman);

    echo "<div id=paging>Hal: $linkHalaman</div><br>";
	?>       
      
    </div>
    <!-- End Content -->     
      <!-- End Products -->
  </div>
    <!-- End Content -->
    <!-- Sidebar -->
    <div id="sidebar">
   
      <!-- Search -->
      <div class="box search">
        <h2>Search by <span></span></h2>
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
