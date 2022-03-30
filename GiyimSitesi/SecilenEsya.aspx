<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SecilenEsya.aspx.cs" Inherits="SecilenEsya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="cart"> <a href="Sepet.aspx" class="cart-link">Sepet</a>
      <div class="cl">&nbsp;</div>
     </div>
    <!-- End Cart -->
    <!-- Navigation --> 
     

     
         <div id="navigation">
             <ul>
                 <li><a href="AnaSayfa.aspx">Ana Sayfa</a></li>
                 <li><a href="YeniEklenenler.aspx" class="active">Yeni Eklenenler</a></li>
                 <li><a href="Erkek.aspx">Erkek</a></li>
                 <li><a href="Kadin.aspx">Kadın</a></li>
                 <li><a href="Hakkimizda.aspx">Hakkımızda</a></li>
             </ul>
         </div>
  
    <!-- End Navigation -->
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <%--<style type="text/css">
.dvUrun
{
    
    border:2 px dotted Red;
    text-align:center;
    padding:5px;
    margin:5px;
    background-color:#E0E0E0;
    font-size:small;
}
img
{
    height:100px;
    width:100px;
    }
</style>--%>

    <div class="cl">&nbsp;</div>
   
    <!-- Content -->
    <div id="content">
      <!-- Content Slider -->
      
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
          <asp:DataList runat="server" ID="DataList1" RepeatColumns="4">
              <ItemTemplate>
    <div class="dvUrun" style="padding: inherit; >
    
 <%--   <%#Eval("urunMarka") %><br />
 <a href="UrunDetay.aspx?pid=<%#Eval("urunId") %>" ><asp:Image ID="Image1"  Height="150px"   Width="110px" ImageUrl='<%#Eval("urunResim") %>' runat="server" /></a><br />
       <%#Eval("urunFiyat") %> TL--%>
     
           
           <div class="products">
              <div class="cl">
                  &nbsp;</div>
              <ul>
                  <li> <a href="UrunDetay.aspx?pid=<%#Eval("urunId") %>" ><asp:Image ID="Image2"  Height="210px"   Width="160px" ImageUrl='<%#Eval("urunResim") %>' runat="server" /></a>
                      <div class="product-info">
                          <h3>
                              <%#Eval("urunMarka") %> </h3>
                          <div class="product-desc">
                              <h4>
                                   <%#Eval("urunCinsiyet") %></h4>
                             
                              <strong class="price"><%#Eval("urunFiyat") %> TL</strong>
                          </div>
                      </div>
                  </li>
      
             
            </ul>
              <div class="cl">
                  &nbsp;</div>
          </div>
  
    </div>
    </ItemTemplate>
          </asp:DataList>
        <div class="cl">&nbsp;</div>
      </div>
      <!-- End Products -->
    </div>
    
    
    <!-- End Content -->
    <!-- Sidebar -->
    
    <!-- End Sidebar -->
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<div class="box categories">
                <h2>
                    Kategoriler <span></span>
                </h2>
                <div class="box-content">
                    <ul>
                        ÜST GİYİM
                   <li><asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate >
                   <a href="SecilenEsya.aspx?urunAdi=<%#Eval("urunAdi") %>"><%#Eval("urunAdi")%></a>
                   </ItemTemplate>
                   <SeparatorTemplate>
                   <br/>
                   </SeparatorTemplate>
                   </asp:Repeater></li>
                            
                            <br />ALT GİYİM
                        <li><asp:Repeater ID="Repeater2" runat="server">
                   <ItemTemplate >
                   <a href="SecilenEsya.aspx?urunAdi=<%#Eval("urunAdi") %>"><%#Eval("urunAdi")%></a>
                   </ItemTemplate>
                   <SeparatorTemplate>
                   <br/>
                   </SeparatorTemplate>
                   </asp:Repeater></li>
                            <br />AKSESUAR
                        <li><asp:Repeater ID="Repeater3" runat="server">
                   <ItemTemplate >
                   <a href="SecilenEsya.aspx?urunAdi=<%#Eval("urunAdi") %>"><%#Eval("urunAdi")%></a>
                   </ItemTemplate>
                   <SeparatorTemplate>
                   <br/>
                   </SeparatorTemplate>
                   </asp:Repeater></li>
                            <br />AYAKKABI
                            <li><asp:Repeater ID="Repeater4" runat="server">
                   <ItemTemplate >
                   <a href="SecilenEsya.aspx?urunAdi=<%#Eval("urunAdi") %>"><%#Eval("urunAdi")%></a>
                   </ItemTemplate>
                   <SeparatorTemplate>
                   <br/>
                   </SeparatorTemplate>
                   </asp:Repeater></li>
                    </ul>
                </div>
            </div>
</asp:Content>

