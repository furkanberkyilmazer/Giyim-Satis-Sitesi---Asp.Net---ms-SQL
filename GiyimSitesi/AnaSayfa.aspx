<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
        
    <div id="cart"> <a href="Sepet.aspx" class="cart-link">Sepet</a>
      <div class="cl">&nbsp;</div>
     </div>
    <!-- End Cart -->
    <!-- Navigation --> 
     

     
         <div id="navigation">
             <ul>
                 <li><a href="AnaSayfa.aspx" class="active">Ana Sayfa</a></li>
                 <li><a href="YeniEklenenler.aspx">Yeni Eklenenler</a></li>
                 <li><a href="Erkek.aspx">Erkek</a></li>
                 <li><a href="Kadin.aspx">Kadın</a></li>
                 <li><a href="Hakkimizda.aspx">Hakkımızda</a></li>
             </ul>
         </div>
  
    <!-- End Navigation -->
  
  <!-- End Header -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="cl">
          &nbsp;</div>
    <!-- Content -->
      <div id="content">
      <!-- Content Slider -->
          <div id="slider" class="box">
              <div id="slider-holder">
                  <ul>
                      <li><a href="Kadin.aspx">
                          <img src="css/images/kampanya1.png" alt="" /></a></li>
                      <li><a href="SecilenEsya.aspx?urunAdi=Gözlük">
                          <img src="css/images/kampanya.png" alt="" /></a></li></li>
                      <li><a href="SecilenEsya.aspx?urunAdi=Mont">
                          <img src="css/images/slide1.jpg" alt="" /></a></li>
                      <li><a href="SecilenEsya3.aspx?urunAdi=Çanta">
                          <img src="css/images/kampanya3.png" alt="" /></a></li>
                  
                  </ul>
              </div>
              <div id="slider-nav">
                  <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
              </div>
          </div>
          <div class="products">
        <div class="cl">&nbsp;</div>
              <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
             
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
      <!-- End Content Slider -->
      <!-- Products -->
          
      <!-- End Products -->
      </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

