<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/MasterPagePanel.master" AutoEventWireup="true" CodeFile="UyeDuzenle.aspx.cs" Inherits="AdminPaneli_UyeDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="grid_16" id="header">
<!-- MENU START -->
    <div class="grid_16" id="Div1">
<!-- MENU START -->
<div id="menu">
	<ul class="group" id="menu_group_main">
		<%--<li class="item first" id="one"><a href="#" class=""><span class="outer"><span class="inner dashboard">AnaSayfa</span></span></a></li>--%>
       
        
        <li class="item first" id="one"><a href="AdminUyeIslem.aspx" class="main current"><span class="outer"><span class="inner users">Üye İşlemleri</span></span></a></li>
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
    </div>
    <div class="grid_16">
<!-- TABS START -->
    <div id="tabs">
         <div class="container">
            <ul>
                      <li><a href="AdminUyeIslem.aspx"><span>Üye İşlemleri</span></a></li>
                      <li><a class="current"><span>Uye Duzenle</span></a></li>
                     
                          
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
    <h1 >ÜYE İŞLEMLERİ</h1>
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
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;" 
                        width="200px">
                        Kullanıcı Adı :</td>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000">
                        Şifre :</td>
                    <td style="height: 21px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000">
                        Şifre Tekrar :</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000">
                        Ad Soyad :</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000">
                        Görevi:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000">
                        Mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                        Telefon:</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; height: 22px;">
                        Engel:</td>
                    <td style="height: 22px">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>Engelle</asp:ListItem>
                            <asp:ListItem>Engeli Kaldır</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                      
                        <asp:ImageButton ID="ImageButton1" Height="35px" Width="65px"  
            ImageUrl="images/düzenle.png" runat="server" onclick="ImageButton1_Click1" />
                      
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

 