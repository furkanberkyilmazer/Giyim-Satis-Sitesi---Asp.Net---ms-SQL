﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/MasterPagePanel.master" AutoEventWireup="true" CodeFile="UrunEkle.aspx.cs" Inherits="AdminPaneli_UrunEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="grid_16" id="header">
<!-- MENU START -->
<div id="menu">
	<ul class="group" id="menu_group_main">
        <%--<li class="item first" id="one"><a href="#" class=""><span class="outer"><span class="inner dashboard">AnaSayfa</span></span></a></li>--%>
       
        
        <li class="item first" id="one"><a href="AdminUyeIslem.aspx" class="outer"><span class="outer"><span class="inner users">&nbsp;Üye İşlemleri</span></span></a></li>
	        <li class="item last" id="two"><a href="UrunIslem.aspx" class="outer"><span class="outer"><span class="inner content">Ürün İşlemleri</span></span></a></li>
    </ul>
</div>
<!-- MENU END -->
</div>


<!-- HIDDEN SUBMENU START -->
<div class="grid_16" id="hidden_submenu">
	  <ul class="more_menu">
		<li><a href="#">More link 1</a></li>
		<li><a href="#">More link 2</a></li>  
	    <li><a href="#">More link 3</a></li>    
        <li><a href="#">More link 4</a></li>                               
      </ul>
	  <ul class="more_menu">
		<li><a href="#">More link 5</a></li>
		<li><a href="#">More link 6</a></li>  
	    <li><a href="#">More link 7</a></li> 
        <li><a href="#">More link 8</a></li>                                  
      </ul>
	  <ul class="more_menu">
		<li><a href="#">More link 9</a></li>
		<li><a href="#">More link 10</a></li>  
	    <li><a href="#">More link 11</a></li>  
        <li><a href="#">More link 12</a></li>                                 
      </ul>            
  </div>
  <div class="grid_16">
<!-- TABS START -->
    <div id="tabs">
         <div class="container">
            <ul>
                      <li><a href="UrunIslem.aspx"><span>Ürün İşlemleri</span></a></li>
                      <li><a ><span>Ürün Düzenle</span></a></li>
                      <li><a href="UrunEkle.aspx" class="current"><span>Ürün Ekle</span></a></li>          
                                      
           </ul>
        </div>
    </div>
<!-- TABS END -->    
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="grid_16" id="content">
    <!--  TITLE START  --> 
    <div class="grid_9">
    <h1 >ÜRÜN EKLE</h1>
    </div>
    <!--RIGHT TEXT/CALENDAR-->
    <!--RIGHT TEXT/CALENDAR END-->
    <div class="clear">
    </div>
    <!--  TITLE END  -->    
    <!-- #PORTLETS START -->
    <div id="portlets">
    <!-- FIRST SORTABLE COLUMN START -->
      <!-- FIRST SORTABLE COLUMN END -->
      <!-- SECOND SORTABLE COLUMN START -->
	<!--  SECOND SORTABLE COLUMN END -->
    <div class="clear"></div>
    <!--THIS IS A WIDE PORTLET-->
    <div class="portlet">
		<div class="portlet-content nopadding">
		    <table class="style1">
                <tr>
                    <td 
                        width="200px">
                        ÜrünMarka:</td>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ControlToValidate="TextBox1" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Ürün Marka Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                   
                </tr>
                <tr>
                    <td>
                        Ürün Stok(Small):</td>
                    <td style="height: 21px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ControlToValidate="TextBox2" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Small Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        Ürün Stok(Medium):</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="TextBox3" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Medium Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        Ürün Stok(Large):</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                             ControlToValidate="TextBox4" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Large Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        Ürün Stok(XLarge):</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                             ControlToValidate="TextBox7" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">XLarge Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        Ürün Fiyat</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                             ControlToValidate="TextBox5" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Fiyat Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        Ürün Cinsiyet:</td>
                    <td style="height: 22px">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Erkek</asp:ListItem>
                            <asp:ListItem>Kadın</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                             ControlToValidate="DropDownList2" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Cinsiyet Boş Geçilmez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                 <tr>
                    <td>
                        Ürün Tür:</td>
                    <td style="height: 22px">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>T-Shirt</asp:ListItem>
                            <asp:ListItem>Gömlek</asp:ListItem>
                            <asp:ListItem>Kazak</asp:ListItem>
                            <asp:ListItem>Hırka</asp:ListItem>
                            <asp:ListItem>Yelek</asp:ListItem>
                            <asp:ListItem>Mont</asp:ListItem>
                            <asp:ListItem>Pantolon</asp:ListItem>
                            <asp:ListItem>Şort , Bermuda</asp:ListItem>
                            <asp:ListItem>Yüzme Şortu</asp:ListItem>
                            <asp:ListItem>Ayakkabı</asp:ListItem>
                            <asp:ListItem>Spor Ayakkabı</asp:ListItem>
                            <asp:ListItem>Terlik</asp:ListItem>
                            <asp:ListItem>Saat</asp:ListItem>
                            <asp:ListItem>Kemer</asp:ListItem>
                            <asp:ListItem>Cüzdan</asp:ListItem>
                            <asp:ListItem>Kravat , Papyon</asp:ListItem>
                            <asp:ListItem>Atkı , Fular</asp:ListItem>
                            <asp:ListItem>Şapka</asp:ListItem>
                            <asp:ListItem>Bileklik</asp:ListItem>
                            <asp:ListItem>Kolye</asp:ListItem>
                            <asp:ListItem>Gözlük</asp:ListItem>
                            <asp:ListItem>Çanta</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                             ControlToValidate="DropDownList3" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Ürün Tür Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>
                </tr>
                  <tr>
                    <td>
                        Ürün Detay:</td>
                    <td style="height: 60px">
                        <asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="426px"></asp:TextBox>
                    </td>
                      <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                             ControlToValidate="TextBox1" CssClass="validation" 
                             ErrorMessage="RequiredFieldValidator">Ürün Detay Boş Geçilemez</asp:RequiredFieldValidator>
                        </td>

                </tr>
                         <tr>
                    <td>
                        Ürün Resim:</td>
                    <td style="height: 22px">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                         &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                      
                        <asp:ImageButton ID="ImageButton1" Height="90px" Width="120px"  
            ImageUrl="images/urunEkle.png"  runat="server" onclick="ImageButton1_Click" />
                      
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                        </td>
                </tr>
            </table>
		</div>
      </div>
<!--  END #PORTLETS -->  
   </div>
    <div class="clear"> </div>
<!-- END CONTENT-->    
  </div>
    </form>
</asp:Content>

 