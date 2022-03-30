using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
 
public partial class AdminPaneli_AdminUyeİslem : System.Web.UI.Page
{  
    Metotlar sinif = new Metotlar();
    string kullaniciId;
    string silislem;
    string engel;
 
    protected void Page_Load(object sender, EventArgs e)
    {
             try
            {

                silislem = Request.QueryString["islem"];
                kullaniciId = Request.QueryString["kullaniciId"];
                engel = Request.QueryString["islem2"];
     
            }
            catch (Exception)
            {
            }

             if (engel=="engelle")
            {
         SqlConnection bag = sinif.bag();
        SqlCommand kmt = new SqlCommand("update kullanici set engel=@engel  where kullaniciId=" + kullaniciId, bag);

        kmt.Parameters.Add("@engel", 1);
        kmt.ExecuteNonQuery();
        
            }
            DataTable dtGruplar2 = sinif.GetDataTable("Select * from kullanici");
            DataRow drkullanici2 = sinif.GetDataRow("select * from kullaniciGrup where grupAdi='" + "Üye" + "'");
            DataTable table2 = sinif.GetDataTable("SELECT dbo.kullanici.*,dbo.kullaniciGrup.grupAdi FROM         dbo.kullanici INNER JOIN dbo.kullaniciGrup ON dbo.kullanici.grupId=dbo.kullaniciGrup.grupId where dbo.kullanici.grupId=" + drkullanici2["grupId"].ToString());
            DataList1.DataSource = table2;
            DataList1.DataBind();
            try
            {

                silislem = Request.QueryString["islem"];
                kullaniciId = Request.QueryString["kullaniciId"];
            }
            catch (Exception)
            {
            }
            if (silislem == "sil")
            {
                sinif.cmd("Delete from kullanici where kullaniciId=" + kullaniciId);
                Response.Redirect("AdminUyeIslem.aspx");
            }

            if (table2.Rows.Count == 0)
            {
                DataList1.Visible = false;
            }
            else
            {
                DataList1.Visible = true;
            }

        
    
   
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
}