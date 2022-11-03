using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class asales : System.Web.UI.Page
{
    static string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
        conn.Open();
        string Query = "Select Itemname from Data ";
        SqlCommand cmd1 = new SqlCommand(Query, conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            name = dr1["Itemname"].ToString();
        }
        conn.Close();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        
        Panel3.Visible = true;
    }
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        
            
            

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        
    }
}