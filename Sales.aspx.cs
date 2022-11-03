using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Sales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel4.Visible = true;

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
       
        Panel3.Visible = true;
        Panel1.Visible = false;


    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = true;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string searchQuery = "select * from Data where Itemname = '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(searchQuery, conn);
            SqlDataReader dr = com.ExecuteReader();
            bool recordfound = dr.Read();
            if (recordfound)
            {

                Panel1.Visible = true;
                Panel2.Visible = true;
            }
            else
            {
                Label1.Visible = true;
            }
            conn.Close();
        }
        catch
        {

        }
        
        
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }
    protected void Button12_Click(object sender, EventArgs e)
    {

    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}