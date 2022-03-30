using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Metotlar sinif = new Metotlar();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["cerezim"] != null) //kullanıcı pc sinde cookie bulunduysa
        {
            HttpCookie yakalananCerez = Request.Cookies["cerezim"]; //cookiyi yakaladık
            Session["kullaniciId"] = yakalananCerez.Values["kullaniciId"];
            Session["adSoyad"] = yakalananCerez.Values["adSoyad"];
        }

        if (Session["kullaniciId"] != null) //giris islemi doğru yapıldıysa
        {
            pnlKulGiris.Visible = false;
            pnlBilgi.Visible = true;
            lblAdSoyad.Text = Session["adSoyad"].ToString();
        }
        else
        {

            SqlConnection bag = sinif.bag();
            SqlCommand kmt = new SqlCommand("update kullanici set online=@online", bag);
            kmt.Parameters.Add("@online", 2);
            kmt.ExecuteNonQuery();
            pnlBilgi.Visible = false;
            pnlKulGiris.Visible = true;

        }

    }
    
    protected void imgGiris_Click(object sender, ImageClickEventArgs e)
    {

        DataRow drMail = sinif.GetDataRow("select * from kullanici where eMail='" + txtEmail.Text + "'");
        if (drMail != null)//email doğruysa
        {
            DataRow drOnay = sinif.GetDataRow("select * from kullanici where eMail='" + txtEmail.Text + "'and onay=1");
            if (drOnay != null)//email var ve onay verilmişse
            {
                 DataRow drEngel = sinif.GetDataRow("select * from kullanici where eMail='" + txtEmail.Text + "'and engel=2");
                 if (drEngel != null)//email var ve onay verilmişse
                 {
                     DataRow drSifre = sinif.GetDataRow("select * from kullanici where eMail='" + txtEmail.Text + "'and sifre='" + txtSifre.Text + "'");
                     if (drSifre != null) //şifre de doğruysa
                     {
                         //giriş işlemleri
                         Session["kullaniciId"] = drSifre["kullaniciId"];
                         Session["adSoyad"] = drSifre["adSoyad"];
                         if (chckHatirla.Checked)
                         {
                             HttpCookie cerez = new HttpCookie("cerezim");
                             cerez.Values.Add("kullaniciId", drSifre["kullaniciId"].ToString()); //cookie değer atadık
                             cerez.Values.Add("adSoyad", drSifre["adSoyad"].ToString());
                             cerez.Expires = DateTime.Now.AddDays(30);//30 gün boyunca cookie kullanılabilir

                             Response.Cookies.Add(cerez); //cookie eklendi
                         }
                         SqlConnection bag = sinif.bag();
                         SqlCommand kmt = new SqlCommand("update kullanici set online=@online where eMail='" + txtEmail.Text + "'", bag);
                         kmt.Parameters.Add("@online", 1);
                         kmt.ExecuteNonQuery();
                         Response.Redirect(Page.Request.Url.ToString(), true);// kullanıcı hangi sayfada giriş yaparsa yine o sayfaya gönderiyor.
                     }

                     else
                     {
                         lblHata.Text = "Şifreniz Hatalı";
                     }

                 }
                 else
                 {
                     lblHata.Text = "Hesabınız Kısıtlandırıldı";
                 }
            }
            else
            {
                lblHata.Text = "Uyeliğiniz onaylanmamıştır";
            }

        }
        else
        {
            lblHata.Text = "Bu mail adresi sistemimizde mevcut değil";
        }
        
    }
    protected void lbCikis_Click(object sender, EventArgs e)
    {
        

        if (Request.Cookies["cerezim"] != null)
        {
            Response.Cookies["cerezim"].Expires = DateTime.Now.AddDays(-1);
            FormsAuthentication.SignOut();//bağlantıyı kapatıyoruz
            Session.Abandon();
            Response.Redirect("AnaSayfa.aspx");
        }
    }
    protected void lbUnuttum_Click(object sender, EventArgs e)
    {
        Response.Redirect("SifremiUnuttum.aspx");
    }
    protected void imgKayıtol_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Kayit.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataRow drGrup = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);

        Response.Redirect("Profilim.aspx?kullaniciId="+drGrup[0]);
       
    }
}
