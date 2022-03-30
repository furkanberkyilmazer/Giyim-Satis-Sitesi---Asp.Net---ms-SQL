using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;



public partial class AnaSayfa : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);
        SqlCommand kmt = new SqlCommand("Select top 8 urunId,urunMarka,urunFiyat,urunResim,urunCinsiyet from urunler", bag);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        bag.Close();

   
    }
}