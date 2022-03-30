<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sepet.aspx.cs" Inherits="Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div id="cart"> <a href="#" class="cart-link">Sepet</a>
      <div class="cl">&nbsp;</div>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="content">
    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
      <asp:DataList ID="DataList1" runat="server">
    
              <ItemTemplate>
                  <div style="border-style: solid; width: 700px; height: 100px;">
                      <div style="float: left; width: 233px; height: 100px;">
                            <%#Eval("urunMarka") %><br />
                           
                     <asp:Image ID="Image1"  Height="80px"   Width="110px" ImageUrl='<%#Eval("urunResim") %>' runat="server" /> 
                   
                      </div>
                      <div style="float: left; width: 236px; height: 100px;">

                          <br />
                          Adet :
                        <%#Eval("Adet") %>

                          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          Fiyat:
                         <%#Eval("urunFiyat") %>

                  
                          
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<a href="sepetDuzenle.aspx?urunId=<%#Eval("urunId") %>&urunBeden=<%#Eval("urunBeden")%>&urunFiyat=<%#Eval("urunFiyat") %>"><img src="css/images/düzenle.png"  height="25px" border="0"></a><a href="Sepet.aspx?urunId=<%#Eval("urunId") %>&urunBeden=<%#Eval("urunBeden")%>&islem=sil"><img src="css/images/sil.png" / height="25px" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />ToplamFiyat:<%#Eval("ToplamFiyat") %><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       


                     </div>
                      <div style="float: left; width: 231px; height: 100px;">
                          &nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="Sepet.aspx?urunId=<%#Eval("urunId") %>&urunBeden=<%#Eval("urunBeden")%>&islem2=satinal"><img src="css/images/satınal.png" / height="70px" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
                          &nbsp;
                           <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                      </div>
                  </div>
              </ItemTemplate>

             

          </asp:DataList>
  
          </div>
    


      <!-- End Products -->
     
      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

