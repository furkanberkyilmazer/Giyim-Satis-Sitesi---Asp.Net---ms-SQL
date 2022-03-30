using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class Profilim : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    string kullaniciId = "";

    static string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
    SqlConnection bag = new SqlConnection(connStr);
    protected void Page_Load(object sender, EventArgs e)
    {
         
        try
        {
             kullaniciId = Request.QueryString["kullaniciId"];

             if (!Page.IsPostBack)
             {
                 DataRow drGrup = sinif.GetDataRow("SELECT  dbo.kullanici.*, dbo.kullaniciGrup.grupAdi FROM dbo.kullanici INNER JOIN dbo.kullaniciGrup ON dbo.kullanici.grupId = dbo.kullaniciGrup.grupId where dbo.kullanici.kullaniciId=" + kullaniciId);//id si uyanın satır bilgilerini datarowa attık
                 TextBox1.Text = drGrup["kullaniciAdi"].ToString();
                 TextBox2.Text = drGrup["sifre"].ToString();
                 TextBox4.Text = drGrup["adSoyad"].ToString();
                 TextBox5.Text = drGrup["eMail"].ToString();
                 TextBox6.Text = drGrup["tel"].ToString();
                 grup();
                 DropDownList1.SelectedValue = drGrup["grupId"].ToString();

             }
            SqlCommand kmt = new SqlCommand("Select urunId,Adet,urunMarka,urunResim,urunCinsiyet,urunTur,ToplamFiyat,urunBeden,ToplamFiyat from satilmis where kullaniciId='" + kullaniciId + "'", bag);

            bag.Open();
            
            
            SqlDataReader dr = kmt.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bag.Close();

    }
        catch (Exception)
        {


        }
    }

    void grup()
    {
        DataTable dtgrup = sinif.GetDataTable("Select * from kullaniciGrup");
        DropDownList1.DataTextField = "grupAdi";
        DropDownList1.DataValueField = "grupId";
        DropDownList1.DataSource = dtgrup;
        DropDownList1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection bag = sinif.bag();
        SqlCommand kmt = new SqlCommand("update kullanici set kullaniciAdi=@kullaniciAdi ,sifre=@sifre ,adSoyad=@adSoyad ,grupId=@grupId ,eMail=@eMail ,tel=@tel where kullaniciId=" + kullaniciId, bag);
        if (TextBox2.Text == TextBox3.Text)
        {
            
            kmt.Parameters.Add("@kullaniciAdi", TextBox1.Text);
            kmt.Parameters.Add("@sifre", TextBox2.Text);
            kmt.Parameters.Add("@adSoyad", TextBox4.Text);
            kmt.Parameters.Add("@Email", TextBox5.Text);
            kmt.Parameters.Add("@tel", TextBox6.Text);
            kmt.Parameters.Add("@grupId", DropDownList1.SelectedValue);
            kmt.ExecuteNonQuery();
            DataRow drGrup = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);
            Response.Redirect("Profilim.aspx?kullaniciId=" + drGrup[0]);
        }
        else
        {

            Label1.Text = "Şifreler Uyuşmuyor";
        }
    }
}