using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class Sepet : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    string urunId = ""; string islem = ""; string islem2 = ""; string beden = "";
    static string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
    SqlConnection bag = new SqlConnection(connStr);
    protected void Page_Load(object sender, EventArgs e)
    {

        DataRow dr2 = sinif.GetDataRow("Select * from kullanici where online=" + 1);
        if (dr2 != null)
        {


            try
            {
                DataRow drGrup = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);


                SqlCommand kmt = new SqlCommand("Select urunId,Adet,urunMarka,urunResim,urunCinsiyet,urunTur,urunFiyat,urunBeden,ToplamFiyat from sepet where kullaniciId='" + drGrup[0] + "'", bag);
        
                bag.Open();
                SqlDataReader dr = kmt.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                bag.Close();

                urunId = Request.QueryString["urunId"];
                islem = Request.QueryString["islem"];
                islem2 = Request.QueryString["islem2"];


                beden = Request.QueryString["urunBeden"];


                if (DataList1.Items.Count == 0)
                {
                    Response.Write("<script>alert('Sepetiniz Boş')</script>");
                }
                if (islem == "sil")
                {

                    SqlCommand kmt2 = new SqlCommand("delete from sepet where urunId='" + urunId + "' and urunBeden='" + beden + "'", bag);
                    bag.Open();
                    kmt2.ExecuteNonQuery();
                    bag.Close();


                    Response.Redirect("Sepet.aspx");
                }
                if (islem2 == "satinal")
                {
                    if (beden=="Small")
                    {
                           DataRow drGrup4 = sinif.GetDataRow("Select urunStok from urunler where urunId=" + urunId);
                           int adet1 = int.Parse(drGrup4[0].ToString());
                           DataRow drGrup3 = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);
                           DataRow drGrup5 = sinif.GetDataRow("Select Adet,urunFiyat,urunMarka,urunCinsiyet,urunResim,urunTur from sepet where kullaniciId=" + drGrup3[0] + " and urunId=" + urunId + " and urunBeden='" + beden + "'");
                           int adet2 = int.Parse(drGrup5[0].ToString());
                        int fiyat=int.Parse(drGrup5[1].ToString());
                           int fark = adet1 - adet2;
                           int tfiyat = adet2 * fiyat;
                           if (fark<0)
                           {
                               Label1.Text = "Stokta Bu Kadar Ürün Yok";
                           }
                           else
                           {
                               SqlConnection bag2 = sinif.bag();
                               SqlCommand kmt5 = new SqlCommand("update urunler set urunStok=@urunStok where urunId=" + urunId, bag2);
                               kmt5.Parameters.Add("@urunStok", fark);

                               kmt5.ExecuteNonQuery();


                               SqlCommand kmt6 = new SqlCommand("delete from sepet where urunId='" + urunId + "' and urunBeden='" + beden + "'", bag);
                               bag.Open();
                               kmt6.ExecuteNonQuery();
                               bag.Close();


                               SqlConnection bag3 = sinif.bag();
                               SqlCommand kmt7 = new SqlCommand("insert into satilmis(kullaniciId,urunId,Adet,ToplamFiyat,urunMarka,urunCinsiyet,urunResim,urunTur,urunBeden) values(@kullaniciId,@urunId,@Adet,@ToplamFiyat,@urunMarka,@urunCinsiyet,@urunResim,@urunTur,@urunBeden)", bag3);
                               kmt7.Parameters.Add("@kullaniciId", drGrup3[0]);
                               kmt7.Parameters.Add("@urunId", urunId);
                               kmt7.Parameters.Add("@Adet", drGrup5[0]);
                               kmt7.Parameters.Add("@ToplamFiyat", tfiyat);
                               kmt7.Parameters.Add("@urunMarka", drGrup5[2].ToString());
                               kmt7.Parameters.Add("@urunCinsiyet", drGrup5[3].ToString());
                               kmt7.Parameters.Add("@urunResim", drGrup5[4].ToString());
                               kmt7.Parameters.Add("@urunTur", drGrup5[5].ToString());
                               kmt7.Parameters.Add("@urunBeden", beden);
                               kmt7.ExecuteNonQuery();
                               Response.Write("<script>alert('Ödenecek Fiyat="+tfiyat+" TL')</script>");
                               Response.Redirect("Sepet.aspx");
                           }

                    }
                    if (beden == "Medium")
                    {
                        DataRow drGrup4 = sinif.GetDataRow("Select urunStok2 from urunler where urunId=" + urunId);
                        int adet1 = int.Parse(drGrup4[0].ToString());
                        DataRow drGrup3 = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);
                        DataRow drGrup5 = sinif.GetDataRow("Select Adet,urunFiyat,urunMarka,urunCinsiyet,urunResim,urunTur from sepet where kullaniciId=" + drGrup3[0] + " and urunId=" + urunId + " and urunBeden='" + beden + "'");
                        int adet2 = int.Parse(drGrup5[0].ToString());
                         int fiyat=int.Parse(drGrup5[1].ToString());
                           int fark = adet1 - adet2;
                           int tfiyat = adet2 * fiyat;
                        if (fark < 0)
                        {
                            Response.Write("<script>alert('Stokta Bu kadar Ürün Yok')</script>");
                        }
                        else
                        {
                            SqlConnection bag2 = sinif.bag();
                            SqlCommand kmt5 = new SqlCommand("update urunler set urunStok2=@urunStok2 where urunId=" + urunId, bag2);
                            kmt5.Parameters.Add("@urunStok2", fark);
                            kmt5.ExecuteNonQuery();

                            SqlCommand kmt6 = new SqlCommand("delete from sepet where urunId='" + urunId + "' and urunBeden='" + beden + "'", bag);
                            bag.Open();
                            kmt6.ExecuteNonQuery();
                            bag.Close();


                            SqlConnection bag3 = sinif.bag();
                            SqlCommand kmt7 = new SqlCommand("insert into satilmis(kullaniciId,urunId,Adet,ToplamFiyat,urunMarka,urunCinsiyet,urunResim,urunTur,urunBeden) values(@kullaniciId,@urunId,@Adet,@ToplamFiyat,@urunMarka,@urunCinsiyet,@urunResim,@urunTur,@urunBeden)", bag3);
                            kmt7.Parameters.Add("@kullaniciId", drGrup3[0]);
                            kmt7.Parameters.Add("@urunId", urunId);
                            kmt7.Parameters.Add("@Adet", drGrup5[0]);
                            kmt7.Parameters.Add("@ToplamFiyat", tfiyat);
                            kmt7.Parameters.Add("@urunMarka", drGrup5[2].ToString());
                            kmt7.Parameters.Add("@urunCinsiyet", drGrup5[3].ToString());
                            kmt7.Parameters.Add("@urunResim", drGrup5[4].ToString());
                            kmt7.Parameters.Add("@urunTur", drGrup5[5].ToString());
                            kmt7.Parameters.Add("@urunBeden", beden);
                            kmt7.ExecuteNonQuery();
                            Response.Write("<script>alert('Ödenecek Fiyat=" + tfiyat + " TL')</script>");
                            Response.Redirect("Sepet.aspx");
                        }



                    }
                    if (beden == "Large")
                    {
                        DataRow drGrup4 = sinif.GetDataRow("Select urunStok3 from urunler where urunId=" + urunId);
                        int adet1 = int.Parse(drGrup4[0].ToString());
                        DataRow drGrup3 = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);
                        DataRow drGrup5 = sinif.GetDataRow("Select Adet,urunFiyat,urunMarka,urunCinsiyet,urunResim,urunTur from sepet where kullaniciId=" + drGrup3[0] + " and urunId=" + urunId + " and urunBeden='" + beden + "'");
                        int adet2 = int.Parse(drGrup5[0].ToString());
                        int fiyat = int.Parse(drGrup5[1].ToString());
                        int fark = adet1 - adet2;
                        int tfiyat = adet2 * fiyat;
                        if (fark < 0)
                        {
                            Response.Write("<script>alert('Stokta Bu kadar Ürün Yok')</script>");
                        }
                        else
                        {
                            SqlConnection bag2 = sinif.bag();
                            SqlCommand kmt5 = new SqlCommand("update urunler set urunStok3=@urunStok3 where urunId=" + urunId, bag2);
                            kmt5.Parameters.Add("@urunStok3", fark);
                            kmt5.ExecuteNonQuery();

                            SqlCommand kmt6 = new SqlCommand("delete from sepet where urunId='" + urunId + "' and urunBeden='" + beden + "'", bag);
                            bag.Open();
                            kmt6.ExecuteNonQuery();
                            bag.Close();

                            SqlConnection bag3 = sinif.bag();
                            SqlCommand kmt7 = new SqlCommand("insert into satilmis(kullaniciId,urunId,Adet,ToplamFiyat,urunMarka,urunCinsiyet,urunResim,urunTur,urunBeden) values(@kullaniciId,@urunId,@Adet,@ToplamFiyat,@urunMarka,@urunCinsiyet,@urunResim,@urunTur,@urunBeden)", bag3);
                            kmt7.Parameters.Add("@kullaniciId", drGrup3[0]);
                            kmt7.Parameters.Add("@urunId", urunId);
                            kmt7.Parameters.Add("@Adet", drGrup5[0]);
                            kmt7.Parameters.Add("@ToplamFiyat", tfiyat);
                            kmt7.Parameters.Add("@urunMarka", drGrup5[2].ToString());
                            kmt7.Parameters.Add("@urunCinsiyet", drGrup5[3].ToString());
                            kmt7.Parameters.Add("@urunResim", drGrup5[4].ToString());
                            kmt7.Parameters.Add("@urunTur", drGrup5[5].ToString());
                            kmt7.Parameters.Add("@urunBeden", beden);
                            kmt7.ExecuteNonQuery();
                            Response.Write("<script>alert('Ödenecek Fiyat=" + tfiyat + " TL')</script>");
                              
                            Response.Redirect("Sepet.aspx");
                        }



                    }
                    if (beden == "XLarge")
                    {
                        DataRow drGrup4 = sinif.GetDataRow("Select urunStok4 from urunler where urunId=" + urunId);
                        int adet1 = int.Parse(drGrup4[0].ToString());
                        DataRow drGrup3 = sinif.GetDataRow("Select kullaniciId from kullanici where online=" + 1);
                        DataRow drGrup5 = sinif.GetDataRow("Select Adet,urunFiyat,urunMarka,urunCinsiyet,urunResim,urunTur from sepet where kullaniciId=" + drGrup3[0] + " and urunId=" + urunId + " and urunBeden='" + beden + "'");
                        int adet2 = int.Parse(drGrup5[0].ToString());
                        int fiyat = int.Parse(drGrup5[1].ToString());
                        int fark = adet1 - adet2;
                        int tfiyat = adet2 * fiyat;
                        if (fark < 0)
                        {
                            Response.Write("<script>alert('Stokta Bu kadar Ürün Yok')</script>");
                        }
                        else
                        {
                            SqlConnection bag2 = sinif.bag();
                            SqlCommand kmt5 = new SqlCommand("update urunler set urunStok4=@urunStok4 where urunId=" + urunId, bag2);
                            kmt5.Parameters.Add("@urunStok4", fark);
                            kmt5.ExecuteNonQuery();

                            SqlCommand kmt6 = new SqlCommand("delete from sepet where urunId='" + urunId + "' and urunBeden='" + beden + "'", bag);
                            bag.Open();
                            kmt6.ExecuteNonQuery();
                            bag.Close();

                            SqlConnection bag3 = sinif.bag();
                            SqlCommand kmt7 = new SqlCommand("insert into satilmis(kullaniciId,urunId,Adet,ToplamFiyat,urunMarka,urunCinsiyet,urunResim,urunTur,urunBeden) values(@kullaniciId,@urunId,@Adet,@ToplamFiyat,@urunMarka,@urunCinsiyet,@urunResim,@urunTur,@urunBeden)", bag3);
                            kmt7.Parameters.Add("@kullaniciId", drGrup3[0]);
                            kmt7.Parameters.Add("@urunId", urunId);
                            kmt7.Parameters.Add("@Adet", drGrup5[0]);
                            kmt7.Parameters.Add("@ToplamFiyat", tfiyat);
                            kmt7.Parameters.Add("@urunMarka", drGrup5[2].ToString());
                            kmt7.Parameters.Add("@urunCinsiyet", drGrup5[3].ToString());
                            kmt7.Parameters.Add("@urunResim", drGrup5[4].ToString());
                            kmt7.Parameters.Add("@urunTur", drGrup5[5].ToString());
                            kmt7.Parameters.Add("@urunBeden", beden);
                            kmt7.ExecuteNonQuery();

                            Response.Write("<script>alert('Ödenecek Fiyat=" + tfiyat + " TL')</script>");
                            Response.Redirect("Sepet.aspx");
                        }



                    }


                    
                    
                }
            }
            catch (Exception)
            {


            }
        }
        else
        {
            Response.Write("<script>alert('Üye Girişi Yapmadığınızdan Sepetiniz Boş')</script>");

        }
    }
  
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
     
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
 
}