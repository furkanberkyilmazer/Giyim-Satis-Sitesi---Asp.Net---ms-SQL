using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO; 
public partial class AdminPaneli_UrunDuzenle : System.Web.UI.Page
{
    Metotlar sinif = new Metotlar();
    string urunId;
    protected void Page_Load(object sender, EventArgs e)
    {
        urunId = Request.QueryString["urunId"];
        if (!Page.IsPostBack)
        {
            DataRow drGrup = sinif.GetDataRow("SELECT * from urunler where urunId=" + urunId);//id si uyanın satır bilgilerini datarowa attık
            TextBox1.Text = drGrup["urunMarka"].ToString();
            TextBox2.Text = drGrup["urunStok"].ToString();
            TextBox3.Text = drGrup["urunStok2"].ToString();
            TextBox4.Text = drGrup["urunStok3"].ToString();
            TextBox7.Text = drGrup["urunStok4"].ToString();
            TextBox5.Text = drGrup["urunFiyat"].ToString();
            TextBox6.Text = drGrup["urunDetay"].ToString();
            DropDownList3.SelectedValue = drGrup["urunTur"].ToString();
            DropDownList2.SelectedValue = drGrup["urunCinsiyet"].ToString();
           

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection bag = sinif.bag();
        SqlCommand kmt = new SqlCommand("update urunler set urunMarka=@urunMarka ,urunFiyat=@urunFiyat ,urunResim=@urunResim , urunDetay=@urunDetay ,urunCinsiyet=@urunCinsiyet ,urunTur=@urunTur , urunStok=@urunStok , urunStok2=@urunStok2 , urunStok3=@urunStok3 , urunStok4=@urunStok4 where urunId=" + urunId, bag);
        string resimAdi = ""; string uzanti = ""; 
        if (FileUpload1.HasFile)//file uploadda resim seçilmişse 
        {
            uzanti = Path.GetExtension(FileUpload1.PostedFile.FileName);
            resimAdi = TextBox1.Text + DateTime.Now.Day + uzanti;
            FileUpload1.SaveAs(Server.MapPath("~/css/images/" + resimAdi));
           
        }
        else
        {
            resimAdi = "resimYok.jpg";
        }
       
        kmt.Parameters.Add("@urunMarka", TextBox1.Text);
        kmt.Parameters.Add("@urunFiyat", TextBox5.Text);
        kmt.Parameters.Add("@urunDetay", TextBox6.Text);
        kmt.Parameters.Add("@urunCinsiyet", DropDownList2.SelectedValue);
        kmt.Parameters.Add("@urunTur", DropDownList3.SelectedValue);
        kmt.Parameters.Add("@urunStok", TextBox2.Text);
        kmt.Parameters.Add("@urunStok2", TextBox3.Text);
        kmt.Parameters.Add("@urunStok3", TextBox4.Text);
        kmt.Parameters.Add("@urunStok4", TextBox7.Text);
        kmt.Parameters.Add("@urunResim", "~/css/images/" + resimAdi);
        kmt.ExecuteNonQuery();
        Response.Redirect("UrunIslem.aspx");
    }
}