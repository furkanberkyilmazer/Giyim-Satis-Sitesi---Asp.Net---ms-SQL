<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kayit.aspx.cs" Inherits="Kayit" %>

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

 <div id="main" style="height: 700px">
  

   
      <div class="cl">
          &nbsp;</div>
      <div class="sifremiUnuttum" style="border-style: double">
          <div style="border-style: hidden; text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; color: #FFFFFF; background-color: #990000; height: 50px;">
              <br />
              KAYDOL<br />
          </div>
            <div style='width: 700px; font-family: "comic Sans MS"; font-size: 12px; font-weight: bold; color: #FF0000; text-align: center'>
                <br />
        <asp:Label ID="lblBilgi" runat="server" Text=""></asp:Label>
                <br />
          </div>
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            CssClass="validation" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txtEmail">E-mail Adresiniz Uygun Değil</asp:RegularExpressionValidator>
&nbsp;</div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Şifre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtSifre" CssClass="validation" 
            ErrorMessage="RequiredFieldValidator">Şifre Boş Geçilemez</asp:RequiredFieldValidator>
        </div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Şifre Tekrar:&nbsp;&nbsp;
        <asp:TextBox ID="txtSifreTekrar" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar" 
            CssClass="validation" ErrorMessage="CompareValidator">Şifreler Uyuşmuyor</asp:CompareValidator>
        </div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Ad Soyad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtAdSoyad" CssClass="validation" 
            ErrorMessage="RequiredFieldValidator">Ad Soyad Boş Geçilemez</asp:RequiredFieldValidator>
        </div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Kullanıcı Adı:&nbsp;&nbsp;
        <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtKullaniciAdi" CssClass="validation" 
            ErrorMessage="RequiredFieldValidator">Kullanıcı Adı Boş Geçilemez</asp:RequiredFieldValidator>
        </div>
    </div>
          <div class = "uyeOl_satir">
              <div class="uyeOl_sol">
                  <br />
                  <br />
                  Tel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
        </div>
    </div>
          <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Meslek:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlMeslek" runat="server">
        </asp:DropDownList>
        </div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Cinsiyet:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbErkek" runat="server" Checked="True" Text="Erkek" />
        <asp:RadioButton ID="rbBayan" runat="server" Text="Bayan" />
        </div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_sol">
        <br />
        <br />
        Resim:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        </div>
    </div> <!--Uye Ol satır Bitti-->
    <div class = "uyeOl_satir">
    <div class="uyeOl_orta">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1"  Height="50px" 
            ImageUrl="~/css/images/uyeolbuton.png"  Width="140px" runat="server" 
            onclick="ImageButton1_Click" />
        </div>
    <div class="uyeOl_sağ"></div>
    </div> <!--Uye Ol satır Bitti-->    

        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="text-align: center">
            <br />
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
      <div class="more-nav"> <a href="#" class="prev">previousa> ext">next</a> </div>
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
</html>
