<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profilim.aspx.cs" Inherits="Profilim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div id="cart"> <a href="Sepet.aspx" class="cart-link">Sepet</a>
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
    

    <div style="margin: 0; padding: 0; border: 0; outline: 0; font-size: 100%; vertical-align: baseline; background: transparent">
		<div style="margin: 0; padding: 0; border: 0; outline: 0; font-size: 100%; vertical-align: baseline; background: transparent">
		    <table style="border-style: none; border-color: inherit; border-width: 0; margin: 0 0 20px 0; padding: 0; outline: 0; font-size: 100%; vertical-align: baseline; background: transparent; border-collapse: collapse; border-spacing: 0; width: 716px; height: 217px;">
                <tbody style="margin: 0; padding: 0; border: 0; outline: 0; font-size: 100%; vertical-align: baseline; background: transparent">
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
                    &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
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
                        <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
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
                    <td>
                        &nbsp;</td>
                    <td>
                      
                        <asp:ImageButton ID="ImageButton1" Height="35px" Width="65px"  
            ImageUrl="css/images/düzenle.png" runat="server" onclick="ImageButton1_Click" />
                    </td>
                </tr>
            </table>
		</div>
      </div>
      <br />
    

      <asp:DataList ID="DataList1" runat="server">
    
              <ItemTemplate>
                  <div style="border-style: solid; width: 466px; height: 100px;">
                      <div style="float: left; width: 233px; height: 100px;">
                            <%#Eval("urunMarka") %><br />
                           
                     <asp:Image ID="Image1"  Height="80px"   Width="110px" ImageUrl='<%#Eval("urunResim") %>' runat="server" /> 
                   
                      </div>
                      <div style="float: left; width: 233px; height: 100px;">

                          <br />
                          Adet :
                        <%#Eval("Adet") %>

                          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          Ödenen Fiyat:
                         <%#Eval("ToplamFiyat") %>

                  
                          
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <br />
                          Urun Tur:<%#Eval("urunTur") %><br />Urun Beden:<%#Eval("urunBeden") %><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       


                     </div>
                  </div>
              </ItemTemplate>

             

          </asp:DataList>
  
          </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

