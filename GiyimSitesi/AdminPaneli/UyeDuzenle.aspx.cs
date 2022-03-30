using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
 
public partial class AdminPaneli_UyeDüzenle : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    string kullaniciId;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        kullaniciId = Request.QueryString["kullaniciId"];
        if (!Page.IsPostBack)
        {
            DataRow drGrup = sinif.GetDataRow("SELECT  dbo.kullanici.*, dbo.kullaniciGrup.grupAdi FROM dbo.kullanici INNER JOIN dbo.kullaniciGrup ON dbo.kullanici.grupId = dbo.kullaniciGrup.grupId where dbo.kullanici.kullaniciId=" + kullaniciId);//id si uyanın satır bilgilerini datarowa attık
            TextBox1.Text = drGrup["kullaniciAdi"].ToString();
            TextBox2.Text = drGrup["sifre"].ToString();      
            TextBox4.Text = drGrup["adSoyad"].ToString();
            TextBox5.Text = drGrup["eMail"].ToString();
            TextBox6.Text=drGrup["tel"].ToString();
            grup();
            DropDownList1.SelectedValue=drGrup["grupId"].ToString();

        }
    }

    void grup()
    {
        DataTable dtgrup = sinif.GetDataTable("Select * from kullaniciGrup");
        DropDownList1.DataTextField="grupAdi";
        DropDownList1.DataValueField = "grupId";
        DropDownList1.DataSource = dtgrup;
        DropDownList1.DataBind();
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        SqlConnection bag = sinif.bag();
        SqlCommand kmt = new SqlCommand("update kullanici set kullaniciAdi=@kullaniciAdi,engel=@engel ,sifre=@sifre ,adSoyad=@adSoyad ,grupId=@grupId ,eMail=@eMail ,tel=@tel where kullaniciId=" + kullaniciId, bag);
        if (TextBox2.Text==TextBox3.Text)
        {
            if (DropDownList2.SelectedValue=="Engelle")
            {
                 kmt.Parameters.Add("@engel", 1);
            }
            else if (DropDownList2.SelectedValue == "Engeli Kaldır")
	        {
                 kmt.Parameters.Add("@engel", 2);
	        }        
            else
            {

            }
             kmt.Parameters.Add("@kullaniciAdi", TextBox1.Text);
        kmt.Parameters.Add("@sifre", TextBox2.Text);
        kmt.Parameters.Add("@adSoyad", TextBox4.Text);
        kmt.Parameters.Add("@Email", TextBox5.Text);
        kmt.Parameters.Add("@tel", TextBox6.Text);
        kmt.Parameters.Add("@grupId", DropDownList1.SelectedValue);
        kmt.ExecuteNonQuery();
        Response.Redirect("AdminUyeIslem.aspx");
        }
        else
        {
            Response.Write("<script>alert('Şifreler Uyuşmuyor')</script>");
        }
       
    }
}
