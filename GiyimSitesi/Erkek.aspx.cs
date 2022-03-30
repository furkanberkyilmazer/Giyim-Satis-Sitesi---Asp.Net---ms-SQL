using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Erkek : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);

        SqlCommand üst = new SqlCommand("Select * from Kategori where urunTur = 1", bag);
        bag.Open();
        SqlDataReader rd = üst.ExecuteReader();
        Repeater1.DataSource = rd;
        Repeater1.DataBind();
        bag.Close();

        SqlCommand alt = new SqlCommand("Select * from Kategori where urunTur = 2", bag);
        bag.Open();
        SqlDataReader rd2 = alt.ExecuteReader();
        Repeater2.DataSource = rd2;
        Repeater2.DataBind();
        bag.Close();

        SqlCommand akse = new SqlCommand("Select * from Kategori where urunTur = 3", bag);
        bag.Open();
        SqlDataReader rd3 = akse.ExecuteReader();
        Repeater3.DataSource = rd3;
        Repeater3.DataBind();
        bag.Close();

        SqlCommand ayakkabi = new SqlCommand("Select * from Kategori where urunTur = 4", bag);
        bag.Open();
        SqlDataReader rd4 = ayakkabi.ExecuteReader();
        Repeater4.DataSource = rd4;
        Repeater4.DataBind();
        bag.Close();

        SqlCommand kmt = new SqlCommand("Select urunId,urunMarka,urunFiyat,urunResim,urunCinsiyet from urunler where urunCinsiyet='"+"Erkek"+"'", bag);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        bag.Close();

    }
}