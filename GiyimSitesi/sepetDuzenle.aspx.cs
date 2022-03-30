using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class sepetDuzenle : System.Web.UI.Page
{ 
    Metotlar sinif = new Metotlar();
    static string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
    SqlConnection bag = new SqlConnection(connStr);
    string beden;
    
    protected void Page_Load(object sender, EventArgs e)
    {

       
 
        SqlCommand kmt = new SqlCommand("Select urunId,urunMarka,urunResim,urunStok,urunDetay,urunFiyat from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["urunId"]);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        while (dr.Read())//dr de okunacak veri varsa;
        {
            Literal1.Text = dr[1].ToString();
            Literal2.Text = dr[5].ToString();
            Image1.ImageUrl = dr[2].ToString();
            Literal4.Text = dr[4].ToString();

        }
        bag.Close();
        DataRow drGrup = sinif.GetDataRow("Select * from kullanici where online=" + 1);
        if (drGrup != null)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
     
    }
    string Beden;
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (rbLarge.Checked)
        {
            Beden = "Large";
        }
        if (rbXL.Checked)
        {
            Beden = "XLarge";
        }
        if (rbSmall.Checked)
        {
            Beden = "Small";
        }
        if (rbMedium.Checked)
        {
            Beden = "Medium";
        }
        SqlConnection bag2 = sinif.bag();
        SqlCommand kmt2 = new SqlCommand("update sepet set Adet=@Adet , urunBeden=@urunBeden ,ToplamFiyat=@ToplamFiyat where urunId=" + Request.QueryString["urunId"]+"and urunBeden='" + Request.QueryString["urunBeden"]+"'", bag2);

        int fiyat = int.Parse(Request.QueryString["urunFiyat"]);
        int adet = int.Parse(ddlAdet.SelectedValue);
        int tfiyat = adet * fiyat;
   
        kmt2.Parameters.Add("@Adet", adet);
        kmt2.Parameters.Add("@ToplamFiyat", tfiyat);
        kmt2.Parameters.Add("@urunBeden", Beden);
       
        kmt2.ExecuteNonQuery();
        Response.Redirect("Sepet.aspx");
    }
    protected void rbSmall_CheckedChanged(object sender, EventArgs e)
    {
        beden1();
    }
    protected void rbMedium_CheckedChanged(object sender, EventArgs e)
    {
        beden2();
    }
    protected void rbLarge_CheckedChanged(object sender, EventArgs e)
    {
        beden3();
    }
    protected void rbXL_CheckedChanged(object sender, EventArgs e)
    {
        beden4();
    }
    void beden1()
    {
        ddlAdet.Items.Clear();
        SqlConnection bag = new SqlConnection("Data Source=.;Initial Catalog=GiyimSitesi;Integrated Security=true");
        SqlCommand kmt = new SqlCommand("Select urunStok from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["urunId"]);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        while (dr.Read())//dr de okunacak veri varsa;
        {

            int sayi = int.Parse(dr[0].ToString());

            for (int i = 1; i <= sayi; i++)
            {

                ddlAdet.Items.Add(i.ToString());

            }

        }

        bag.Close();


    }
    void beden2()
    {
        ddlAdet.Items.Clear();
        SqlConnection bag = new SqlConnection("Data Source=.;Initial Catalog=GiyimSitesi;Integrated Security=true");
        SqlCommand kmt = new SqlCommand("Select urunStok2 from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["urunId"]);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        while (dr.Read())//dr de okunacak veri varsa;
        {

            int sayi = int.Parse(dr[0].ToString());

            for (int i = 1; i <= sayi; i++)
            {

                ddlAdet.Items.Add(i.ToString());

            }

        }

        bag.Close();


    }
    void beden3()
    {
        ddlAdet.Items.Clear();
        SqlConnection bag = new SqlConnection("Data Source=.;Initial Catalog=GiyimSitesi;Integrated Security=true");
        SqlCommand kmt = new SqlCommand("Select urunStok3 from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["urunId"]);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        while (dr.Read())//dr de okunacak veri varsa;
        {

            int sayi = int.Parse(dr[0].ToString());

            for (int i = 1; i <= sayi; i++)
            {

                ddlAdet.Items.Add(i.ToString());

            }

        }

        bag.Close();


    }
    void beden4()
    {
        ddlAdet.Items.Clear();
        SqlConnection bag = new SqlConnection("Data Source=.;Initial Catalog=GiyimSitesi;Integrated Security=true");
        SqlCommand kmt = new SqlCommand("Select urunStok4 from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["urunId"]);
        bag.Open();
        SqlDataReader dr = kmt.ExecuteReader();
        while (dr.Read())//dr de okunacak veri varsa;
        {

            int sayi = int.Parse(dr[0].ToString());

            for (int i = 1; i <= sayi; i++)
            {

                ddlAdet.Items.Add(i.ToString());

            }

        }

        bag.Close();


    }
}