<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SifremiUnuttum.aspx.cs" Inherits="SifremiUnuttum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shop Around</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>

        </head>
<body>
    <form id="form1" runat="server">
<!-- Shell -->
<div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
          <div id="cart">
              <a href="#" class="cart-link">Sepet</a>
              <div class="cl">
                  &nbsp;</div>
          </div>
    <!-- End Cart -->
    <!-- Navigation --> 
     

     
          <div id="navigation">
              <ul>
                  <li><a href="AnaSayfa.aspx">Ana Sayfa</a></li>
                  <li><a href="YeniEklenenler.aspx">Yeni Eklenenler</a></li>
                  <li><a href="Erkek.aspx">Erkek</a></li>
                  <li><a href="Kadin.aspx">Kadın</a></li>
                  <li><a href="Hakkimizda.aspx">Hakkımızda</a></li>
              </ul>
          </div>
 
    <!-- End Navigation -->
  </div>
  <!-- End Header -->
  <!-- Main -->

 <div id="main" style="height: 183px">
  

   
      <div class="cl">
          &nbsp;</div>
      <div class="sifremiUnuttum" style="border-style: double">
          <div style="border-style: hidden; text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; color: #FFFFFF; background-color: #990000; height: 50px;">
              <br />
              ŞİFREMİ UNUTTUM
              <br />
          </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label 
              ID="lblBilgi"  runat="server"></asp:Label>
       &nbsp;<div style="text-align: center">&nbsp; Mail Adersinizi Giriniz: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div> 
        <div style="text-align: center">
            <br />
            <asp:ImageButton ID="ImageButton1"  Height="30px" Width="80px"  
            ImageUrl="css/images/gonder.png" runat="server" onclick="ImageButton1_Click" />
        </div>
            
    </div>
  
    <!-- End Content -->
    <!-- Sidebar -->
   
    <div class="cl">&nbsp;</div>
  
  </div>
  <!-- End Main -->
  <!-- Side Full -->

  <div class="side-full">
    <!-- More Products -->
    <div class="more-products">
      <div class="more-products-holder">
        <ul>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li class="last"><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
        </ul>
      </div>
      <div class="more-nav"> <a href="#" class="prev">previous</a> <a href="#" class="next">next</a> </div>
    </div>
    <!-- End More Products -->
    <!-- Text Cols -->
    
    <!-- End Text Cols -->
  </div>
  <!-- End Side Full -->
  <!-- Footer -->
  <div id="footer">
    <p class="left"> <a href="AnaSayfa.aspx">Ana Sayfa</a> <span>|</span> <a href="YeniEklenenler.aspx">Yeni Eklenenler</a> <span>|</span> <a href="Erkek.aspx">Erkek</a> <span>|</span> <a href="Kadin.aspx">Kadın</a> <span>|</span> <a href="Hakkimizda.aspx">Hakkımızda</a><span>|</span><a href="AdminPaneli/AdminGiris.aspx">AdminGirişi</a>  </p>
    <p class="right"> &copy; 2021 Shop Around.  </p>
  &nbsp;</div>
  <!-- End Footer -->
</div>
<!-- End Shell -->
    </form>
</body>
</html>
