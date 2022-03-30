using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Web.Configuration;

public partial class UrunDetay : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    static string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
    SqlConnection bag = new SqlConnection(connStr);
    protected void Page_Load(object sender, EventArgs e)
    {


       
        SqlCommand kmt = new SqlCommand("Select urunId,urunMarka,urunResim,urunStok,urunDetay,urunFiyat from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
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
        if (drGrup!= null) 
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
 
        try
        {     
            if (rbLarge.Checked)
	{
		  Beden="Large";
	}
             if (rbXL.Checked)
	{
		  Beden="XLarge";
	}
             if (rbSmall.Checked)
	{
		 Beden="Small";
	}
             if (rbMedium.Checked)
	{
		  Beden="Medium";
	}
           
            int adet = int.Parse(ddlAdet.SelectedValue);

            DataRow drGrup2 = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);


            DataRow drGrup3 = sinif.GetDataRow("Select Adet,urunFiyat from sepet where kullaniciId=" + drGrup2[0] + " and urunId=" + Request.QueryString["pid"] + " and urunBeden='" +Beden+"'" );
            if (drGrup3!=null)
            {
                int yadet = int.Parse(drGrup3[0].ToString());
                int Tadet = yadet + adet;
                int fiyat = int.Parse(drGrup3[1].ToString());
        SqlConnection bag2 = sinif.bag();
        SqlCommand kmt2 = new SqlCommand("update sepet set Adet=@Adet , ToplamFiyat=@ToplamFiyat where urunId=" +  Request.QueryString["pid"]+ " and kullaniciId=" + drGrup2[0] + " and urunBeden='" +Beden+"'", bag2);
        int tfiyat = Tadet * fiyat;
        kmt2.Parameters.Add("@Adet", Tadet);
        kmt2.Parameters.Add("@ToplamFiyat", tfiyat);
       
        kmt2.ExecuteNonQuery();
        lbldurum.Text = "Sepetinize Eklendi";
       
            }

            else
            {        
        SqlConnection bag = sinif.bag();
        SqlCommand kmt = new SqlCommand("insert into sepet(kullaniciId,urunId,Adet,urunFiyat,urunMarka,urunCinsiyet,urunResim,urunTur,urunBeden,ToplamFiyat) values(@kullaniciId,@urunId,@Adet,@urunFiyat,@urunMarka,@urunCinsiyet,@urunResim,@urunTur,@urunBeden,@ToplamFiyat)", bag);
        DataRow drGrup = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);
        DataRow dr = sinif.GetDataRow("Select urunFiyat,urunMarka,urunCinsiyet,urunResim,urunTur from urunler where urunId=" + Request.QueryString["pid"]);

        if (rbSmall.Checked)
        {
             kmt.Parameters.Add("@urunBeden", "Small");
        }
        if (rbMedium.Checked)
        {
             kmt.Parameters.Add("@urunBeden", "Medium");
        }
        if (rbLarge.Checked)
        {
              kmt.Parameters.Add("@urunBeden", "Large");
        }
        if (rbXL.Checked)
        {
              kmt.Parameters.Add("@urunBeden", "XLarge");
        }
        int fiyat = int.Parse(dr[0].ToString());
        int tfiyat = adet * fiyat;

        kmt.Parameters.Add("@kullaniciId", drGrup[0]);
        kmt.Parameters.Add("@urunId", Request.QueryString["pid"]);
        kmt.Parameters.Add("@Adet", adet);
        kmt.Parameters.Add("@urunFiyat", dr[0]);
        kmt.Parameters.Add("@urunMarka", dr[1]);
        kmt.Parameters.Add("@urunCinsiyet", dr[2]);
        kmt.Parameters.Add("@urunResim", dr[3]);
        kmt.Parameters.Add("@urunTur", dr[4]);
        kmt.Parameters.Add("@ToplamFiyat", tfiyat);
       

        kmt.ExecuteNonQuery();
        lbldurum.Text = "Sepetinize Eklendi";

            }

  
        }
        catch (Exception)
        {

            lbldurum.Text = "Beden Seçiniz";
        }
      
      
      

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

        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);
        SqlCommand kmt = new SqlCommand("Select urunStok from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
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
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);
        SqlCommand kmt = new SqlCommand("Select urunStok2 from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
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
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);
        SqlCommand kmt = new SqlCommand("Select urunStok3 from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
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
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);
        SqlCommand kmt = new SqlCommand("Select urunStok4 from urunler where urunId=@pid", bag);
        kmt.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
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