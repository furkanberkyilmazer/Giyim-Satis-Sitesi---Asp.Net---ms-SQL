using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminPaneli_UrunIslem : System.Web.UI.Page
{
    
    Metotlar sinif = new Metotlar();
    string silislem;
    string urunId;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            silislem = Request.QueryString["islem"];
            urunId = Request.QueryString["urunId"];
        

        }
        catch (Exception)
        {
        }



        DataTable dtGruplar2 = sinif.GetDataTable("Select* from urunler");
        //DataRow drkullanici2 = sinif.GetDataRow("select * from kullaniciGrup where grupAdi='" + "Üye" + "'");
        //DataTable table2 = sinif.GetDataTable("SELECT dbo.kullanici.*,dbo.kullaniciGrup.grupAdi FROM         dbo.kullanici INNER JOIN dbo.kullaniciGrup ON dbo.kullanici.grupId=dbo.kullaniciGrup.grupId where dbo.kullanici.grupId=" + drkullanici2["grupId"].ToString());
        DataList1.DataSource = dtGruplar2;
        DataList1.DataBind();
    
        if (silislem == "sil")
        {
            sinif.cmd("Delete from urunler where urunId=" + urunId);
            Response.Redirect("UrunIslem.aspx");
        }

        if (dtGruplar2.Rows.Count == 0)
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