using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class kayitTamam : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    string eMail;
    protected void Page_Load(object sender, EventArgs e)
    {
        int sayi;
        try
        {
            eMail = Request.QueryString["eMail"];
      
        DataRow drSayi = sinif.GetDataRow("select * from kullanici where eMail='" + eMail + "'");
        sayi = int.Parse(drSayi["sayi"].ToString());
        MailAddress gonderen = new MailAddress("furkanberk1997@gmail.com", "FurkanBerk Yılmazer");
        MailAddress alan = new MailAddress(eMail, "Üyelik Aktivasyon Bilgisi");
        MailMessage mesaj = new MailMessage(gonderen, alan);
        mesaj.IsBodyHtml = true;
        mesaj.Subject = "www.ShopAround.com a üyelik için gönderilen onay kodu";
        mesaj.Body = "<a href='kayitOnay.aspx?x=" + sayi + "&eMail=" + eMail + "'>Uyelik Onayı için Tıklayınız...</a>";
        NetworkCredential guvenlik = new NetworkCredential("furkanberk1997@gmail.com", "123456berk");
        SmtpClient client = new SmtpClient();
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.UseDefaultCredentials = false;
        client.Credentials = guvenlik;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Send(mesaj);
  }
        catch (Exception)
        {
        }
    }
}