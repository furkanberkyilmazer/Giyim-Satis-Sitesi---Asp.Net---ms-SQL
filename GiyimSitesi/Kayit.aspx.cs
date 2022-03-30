using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Kayit : System.Web.UI.Page
{

    Metotlar sinif = new Metotlar();
    string kullaniciId;
    int sayi;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random rnd = new Random();
        sayi = rnd.Next();

        if (!Page.IsPostBack)
        {
            DataRow drMeslekler = sinif.GetDataRow("select * from meslek");
            grup();
            ddlMeslek.SelectedValue = drMeslekler["meslekId"].ToString();
        }        
    }
    void grup()
    {
        DataTable dtMeslekler = sinif.GetDataTable("Select * from meslek");
        ddlMeslek.DataTextField = "meslekAdi";
        ddlMeslek.DataValueField = "meslekId";
        ddlMeslek.DataSource = dtMeslekler;
        ddlMeslek.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

       
        string grupId = ""; string cinsiyet = ""; string resimAdi = ""; string uzanti = "";
        if (FileUpload1.HasFile)//file uploadda resim seçilmişse 
        {
            uzanti = Path.GetExtension(FileUpload1.PostedFile.FileName);
            resimAdi = txtEmail.Text + DateTime.Now.Day + uzanti;
            FileUpload1.SaveAs(Server.MapPath("kullaniciResimleri/" + resimAdi));
        }
        else
        {
          
                resimAdi = "resimYok.png";
            
         
        }

        if (rbErkek.Checked)
        {
            cinsiyet = "Erkek";
        }
        else
        {
            cinsiyet = "Bayan";
        }
        grupId = sinif.GetDataCell("select grupId from kullaniciGrup where grupAdi='" + "Üye" + "'");//kullanıcı grup tablosunda grup adı kullanıcı olan satırın grupid sini çektik
        DataRow drMail = sinif.GetDataRow("select * from kullanici where eMail='" + txtEmail.Text + "'");

        if (drMail == null) //aynı mailden yok ise
        {
           
            SqlConnection bag = sinif.bag();
            SqlCommand kmt = new SqlCommand("insert into kullanici(eMail,sifre,adSoyad,kullaniciAdi,tel,meslekId,cinsiyet,resimAdi,grupId,sayi) values(@eMail , @sifre , @adSoyad , @kullaniciAdi , @tel , @meslekId , @cinsiyet , @resimAdi , @grupId,@sayi)", bag);
            kmt.Parameters.Add("eMail", txtEmail.Text);
            kmt.Parameters.Add("adSoyad", txtAdSoyad.Text);
            kmt.Parameters.Add("sifre", txtSifre.Text);
            kmt.Parameters.Add("kullaniciAdi", txtKullaniciAdi.Text);
            kmt.Parameters.Add("tel", txtTel.Text);
            kmt.Parameters.Add("cinsiyet", cinsiyet);
            kmt.Parameters.Add("grupId", grupId);
            kmt.Parameters.Add("meslekId", ddlMeslek.SelectedValue);
            kmt.Parameters.Add("resimAdi", "~/css/images/" + resimAdi);
            kmt.Parameters.Add("sayi", sayi);
            kmt.ExecuteNonQuery();
            Response.Redirect("kayitTamam.aspx?email=" + txtEmail.Text);
            
            
        }
        else
        {
            lblBilgi.Text = "Bu mail adresi sitemizde mevcuttur.";
        } 
        }
        catch (Exception)
        {
            
        }
    }
}