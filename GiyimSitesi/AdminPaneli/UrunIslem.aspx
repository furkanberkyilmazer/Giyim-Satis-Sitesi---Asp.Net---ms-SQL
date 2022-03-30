<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/MasterPagePanel.master" AutoEventWireup="true" CodeFile="UrunIslem.aspx.cs" Inherits="AdminPaneli_UrunIslem" %>

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
                      <li><a href="UrunIslem.aspx" class="current"><span>Ürün İşlemleri</span></a></li>
                      <li><a><span>Ürün Düzenle</span></a></li>
                      <li><a href="UrunEkle.aspx"><span>Ürün Ekle</span></a></li>
                          
           </ul>
        </div>
    </div>
<!-- TABS END -->    
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="grid_16" id="content">
        <div class="grid_9">
            <h1>ÜRÜN İŞLEMLERİ</h1>
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
		    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                Width="72%" onselectedindexchanged="DataList1_SelectedIndexChanged">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    <table class="style1">
                        <tr>
                            <td style="height: 36px; width: 20%;">
                                UrunResim</td>
                            <td style="height: 36px; width: 15%;">
                                Urun Marka</td>
                            <td style="width: 9%; height: 36px;">
                                &nbsp;Small</td>
                                <td style="width: 12%; height: 36px;">
                                    &nbsp;&nbsp; Medium</td>
                                <td style="width: 11%; height: 36px;">
                                    &nbsp;&nbsp; Large</td>
                                     <td style="width: 11%; height: 36px;">
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XLarge</td>
                                <td style="height: 36px; width: 120px;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Düzenle</td>
                            <td style="height: 36px; width: 9%;">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Sil<br />
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td style="width: 21%">
                                 
                                    
                                    <asp:Image ID="Image1" Height="70px"   Width="70px" ImageUrl='<%#Eval("urunResim") %>' runat="server" />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                            </td>
                            <td style="width: 14%">
                                   <%#Eval("urunMarka") %>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="width: 13%">
                                    <%#Eval("urunStok") %>
                            </td>
                            <td style="width: 12%">
                                    <%#Eval("urunStok2") %>
                            </td>
                            <td style="width: 15%">
                                    <%#Eval("urunStok3") %>
                            </td>
                            <td style="width: 16%">
                                    <%#Eval("urunStok4") %>
                            </td>
                            </td>
                            <td style="width: 10%">
                                &nbsp;<a href='UrunDuzenle.aspx?urunId=<%#Eval("urunId") %>'><img height="30" border="0" src="images/icon_settings.png" />  
                                </a>
                            </td>
                            <td width="10%">
                                <a href='UrunIslem.aspx?urunId=<%#Eval("urunId") %>&islem=sil'> 
                                    <img height="30" border="0" src="images/sil.png" /> 
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
		</div>
      </div>
<!--  END #PORTLETS -->  
   </div>
    <div class="clear"> </div>
<!-- END CONTENT-->    
  </div>
    </form>
</asp:Content>

 