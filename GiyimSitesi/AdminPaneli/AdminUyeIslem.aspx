<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/MasterPagePanel.master" AutoEventWireup="true" CodeFile="AdminUyeIslem.aspx.cs" Inherits="AdminPaneli_AdminUyeİslem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="grid_16" id="header">
<!-- MENU START -->
<div id="menu">
	<ul class="group" id="menu_group_main">
		<%--<li class="item first" id="one"><a href="#" class=""><span class="outer"><span class="inner dashboard">AnaSayfa</span></span></a></li>--%>
       
        
        <li class="item first" id="one"><a href="AdminUyeIslem.aspx" class="main current"><span class="outer"><span class="inner users">&nbsp;Üye İşlemleri</span></span></a></li>
	     <li class="item last" id="two"><a href="UrunIslem.aspx" class="outer"><span class="outer"><span class="inner content">Ürün İşlemleri</span></span></a></li>

    </ul>
</div>
<!-- MENU END -->
</div>
<div class="grid_16">
<!-- TABS START -->
    <div id="tabs">
         <div class="container">
            <ul>
                      <li><a href="AdminUyeIslem.aspx" class="current"><span>Üye İşlemleri</span></a></li>
                      <li><a><span>Uye Duzenle</span></a></li>
                          
           </ul>
        </div>
    </div>
<!-- TABS END -->    
</div>

<!-- HIDDEN SUBMENU START -->

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="grid_16" id="content">
        <div class="grid_9">
            <h1>ÜYE İŞLEMLERİ</h1>
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
                Width="61%">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    <table class="style1">
                        <tr>
                            <td width="30%" style="height: 36px">
                                Kullanıcı Adı</td>
                            <td style="height: 36px; width: 20%;">
                                Ad Soyad</td>
                            <td style="width: 17%; height: 36px;">
                                &nbsp;&nbsp; Görevi</td>
                                <td style="width: 4%; height: 36px;">
                                    &nbsp;Düzenle</td>
                            <td width="10%" style="height: 36px">
                                &nbsp; &nbsp; Sil<br />
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td width="30%">
                                    <%#Eval("kullaniciAdi") %>
                            </td>
                            <td style="width: 20%">
                                   <%#Eval("adSoyad") %>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td width="20%">
                                    <%#Eval("grupAdi") %>
                            </td>
                            </td>
                            <td style="width: 10%">
                                &nbsp;<a href='UyeDuzenle.aspx?kullaniciId=<%#Eval("kullaniciId") %>'><img height="30" border="0" src="images/icon_settings.png" />  
                                </a>
                            </td>
                            <td width="10%">
                                <a href='AdminUyeIslem.aspx?kullaniciId=<%#Eval("kullaniciId") %>&islem=sil'> 
                                    <img height="30" border="0" src="images/sil.png" /> 
                                &nbsp;</a></td>
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

