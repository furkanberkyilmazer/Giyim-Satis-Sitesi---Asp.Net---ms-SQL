using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for Metotlar
/// </summary>
public class Metotlar
{
	public Metotlar()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public SqlConnection bag()
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection bag = new SqlConnection(connStr);
        bag.Open();
        return (bag);
    }

    public int cmd(string sqlcumle)
    {
        SqlConnection bag = this.bag();//bağlantıyı oluşturduk
        SqlCommand cmd = new SqlCommand(sqlcumle, bag);
        int sonuc = 0;
        try
        {
            sonuc = cmd.ExecuteNonQuery();
        }
        catch (Exception hata)
        {

            throw new Exception(hata.Message + "(" + sqlcumle + ")");
        }
        
        cmd.Dispose();
        bag.Close();
        bag.Dispose();
        return sonuc;
    }
    public DataTable GetDataTable(string sqlcumle)
    {
        SqlConnection bag = this.bag();
        SqlDataAdapter adtr = new SqlDataAdapter(sqlcumle, bag);
        DataTable table = new DataTable();
        try
        {
            adtr.Fill(table);
        }
        catch (Exception hata)
        {

            throw new Exception(hata.Message + "(" + sqlcumle + ")");
        }
        adtr.Dispose();
        bag.Close();
        bag.Dispose();
        return table;
    }
    public DataRow GetDataRow(string sqlcumle)
    {
        DataTable table = GetDataTable(sqlcumle);
        if (table.Rows.Count == 0) 
        {
            return null;
        }
        else
        {
            return table.Rows[0];//datatable in satırını döndürür.
        }
    }
    public string GetDataCell(string sqlcumle)
    {
        DataTable table = GetDataTable(sqlcumle);
        if (table.Rows.Count == 0)
        {
            return null;
        }
        else
        {
            return table.Rows[0][0].ToString();//datatable in satırını döndürür.
        }
    }
    
}