<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UrunDetay.aspx.cs" Inherits="UrunDetay" %>

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
<style type="text/css">
#dvUrunDetay{width:100%;}
#dvResim
{
    float:left;
    width:100%;}
#dvDetay
{
    float:left;
    width:70%;}
</style>
<div id="content">

      <!-- Content Slider -->
      
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
      <div style="border-style: hidden; text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; color: #FFFFFF; background-color: #990000; height: 50px;">
        <br />
   ÜRÜN DETAY
        <br />
    </div>
        <div id="Div2">
<div id="Div3">
<div id="Sol">  
    <asp:Image ID="Image1" Height="413px" runat="server" 
        Width="426px" /> 
        &nbsp;<div id="Sağ" style="height: 16px; width: 600px;"> Ürün Bilgisi:&nbsp;    <asp:Literal ID="Literal4" runat="server"></asp:Literal>   </div>  
    
    </div>
    
</div>
<div id="Div4">
Ürün Adı:    <asp:Literal ID="Literal1" runat="server"></asp:Literal><br />
Fiyatı:    <asp:Literal ID="Literal2" runat="server"></asp:Literal><br />

    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Width="354px">
        &nbsp;<asp:RadioButton ID="rbSmall" runat="server" GroupName="radio" 
            AutoPostBack="True" oncheckedchanged="rbSmall_CheckedChanged" Text="Small(S)" />
        &nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbMedium" runat="server" GroupName="radio" 
            AutoPostBack="True" oncheckedchanged="rbMedium_CheckedChanged" 
            Text="Medium(M)" />
        &nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbLarge" runat="server" AutoPostBack="True" 
            GroupName="radio" oncheckedchanged="rbLarge_CheckedChanged" Text="Large(L)" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbXL" runat="server" AutoPostBack="True" GroupName="radio" 
            oncheckedchanged="rbXL_CheckedChanged" Text="XLarge(XL)" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Adet"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlAdet" runat="server" Height="19px" Width="72px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:ImageButton ID="btnEkle" runat="server" Height="76px" 
            ImageUrl="~/css/images/sepetekle.png" onclick="ImageButton2_Click" 
            Width="126px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbldurum" runat="server"></asp:Label>
        &nbsp;
        <br />
        <br />
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
</div>
<div>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    </div>
    </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

</asp:Content>

