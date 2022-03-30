using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
 
public partial class AdminPaneli_AdminGiris : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
   
    protected void Page_Load(object sender, EventArgs e)
    {
    
       
   
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

  DataRow drGiris = sinif.GetDataRow("select * from kullanici where kullaniciAdi='" + clear.temizle(txtMail.Text) + "' and sifre='" + txtSifre.Text + "' and grupId=1");
  
  
        if (drGiris != null)
        {
            Session["kullaniciId"] = drGiris["kullaniciId"].ToString();
            Response.Redirect("AdminUyeIslem.aspx");
        }
        else
        {
            lblBilgi.Text = "Kullanıcı Adı Veya Şifre Hatalıdır";
        }

    }
}