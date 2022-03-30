using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class kayitOnay : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
   string x;
    string eMail;   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            x = Request.QueryString["x"];//emailden gelen x random x sayısı
            eMail = Request.QueryString["eMail"];
        }
        catch (Exception)
        {

        }
        DataRow drSayi = sinif.GetDataRow("select * from kullanici where eMail='" + eMail + "'");//mail gönderilen email adresininin satır bilgilerini aldık.
        if (x == drSayi["sayi"].ToString().Trim())
        {
            sinif.cmd("update kullanici set onay=1 where eMail='" + eMail + "'");

        }

    }
}