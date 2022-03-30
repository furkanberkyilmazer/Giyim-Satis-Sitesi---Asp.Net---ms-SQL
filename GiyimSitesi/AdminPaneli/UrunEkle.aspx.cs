using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
 
public partial class AdminPaneli_UrunEkle : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection bag = sinif.bag();
        SqlCommand kmt = new SqlCommand("insert into urunler(urunMarka,urunFiyat,urunDetay,urunStok,urunStok2,urunStok3,urunStok4,urunCinsiyet,urunResim,urunTur) values(@urunMarka,@urunFiyat,@urunDetay,@urunStok,@urunStok2,@urunStok3,@urunStok4,@urunCinsiyet,@urunResim,@urunTur)", bag);
        string resimAdi = ""; string uzanti = "";
        if (FileUpload1.HasFile)//file uploadda resim seçilmişse 
        {
            uzanti = Path.GetExtension(FileUpload1.PostedFile.FileName);
            resimAdi = TextBox1.Text + DateTime.Now.Minute+DateTime.Now.Second + uzanti;
            FileUpload1.SaveAs(Server.MapPath("~/css/images/" + resimAdi));

        }
        else
        {
            resimAdi = "resimYok.jpg";
        }

        kmt.Parameters.Add("@urunResim", "~/css/images/" + resimAdi);
        kmt.Parameters.Add("@urunMarka", TextBox1.Text);
        kmt.Parameters.Add("@urunFiyat", TextBox5.Text);
        kmt.Parameters.Add("@urunDetay", TextBox6.Text);
        kmt.Parameters.Add("@urunStok", TextBox2.Text);
        kmt.Parameters.Add("@urunStok2", TextBox3.Text);
        kmt.Parameters.Add("@urunStok3", TextBox4.Text);
        kmt.Parameters.Add("@urunStok4", TextBox7.Text);
        if (DropDownList2.SelectedValue=="Erkek")
        {
            kmt.Parameters.Add("@urunCinsiyet", "Erkek"); 
        }
        if (DropDownList2.SelectedValue == "Kadın")
        {


            kmt.Parameters.Add("@urunCinsiyet", "Kadın");
        }
        kmt.Parameters.Add("@urunTur", DropDownList3.SelectedValue);

        kmt.ExecuteNonQuery();
        Response.Redirect("UrunIslem.aspx");
    }
}