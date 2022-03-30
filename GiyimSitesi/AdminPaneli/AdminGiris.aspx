<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminGiris.aspx.cs" Inherits="AdminPaneli_AdminGiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container_16">
    <div class="grid_6 prefix_5 suffix_5">
   	   <h1>Admin Girişi - Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
    	<div id="login">
    	
    	    <form id="form1" runat="server">
    	    <p>
    	        <asp:Label ID="lblBilgi" runat="server" ForeColor="#FF3300"></asp:Label>
  	      </p>
            <p>
    	        <label><strong>KullanıcıAdı</strong>
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
&nbsp;</label></p>
    	    <p>
    	      <label><strong>Şifre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;&nbsp;
                <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
&nbsp;</label></p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" Height="29px" Width="45px"  
            ImageUrl="images/giris.png" runat="server" onclick="ImageButton1_Click1" />
            </form>
	<%--	  <br clear="all" />--%>
    	</div>
  </div>
</div>
</asp:Content> 

