using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;

public partial class SifremiUnuttum : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DataRow drKul = sinif.GetDataRow("select * from kullanici where eMail='" + txtEmail.Text + "'");
        if (drKul != null)
        {
            try
            {

           
            //mail gönderme işlemleri
            MailAddress gonderen = new MailAddress("furkanberk1997@gmail.com", "FurkanBerk Yılmazer");
            MailAddress alan = new MailAddress(txtEmail.Text, "Kullanıcı Sifre Bilgisi");
            MailMessage mesaj = new MailMessage(gonderen, alan);
            mesaj.IsBodyHtml = true;
            mesaj.Subject = "www.ShoupAround.com 'a Şifremi Unuttum";
            mesaj.Body = "Şifreniz: " + drKul["sifre"].ToString() + "</br>Giris için <a href='AnaSayfa.aspx'>Tıklayınız</a>";
            NetworkCredential guvenlik = new NetworkCredential("furkanberk1997@gmail.com", "123456berk");
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.UseDefaultCredentials = false;
            client.Credentials = guvenlik;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Send(mesaj);
            lblBilgi.Text = "Şifreniz başarıyla mail adresinize gönderilmiştir";
            }
            catch (Exception)
            {
                
                
            }
        }
        else
        {
            lblBilgi.Text = "Bu Email e sahip kullanıcı bulunamadı";
        }
    }
}