using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.IO;

public partial class aproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
        conn.Open();
      
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        
    }
    protected void genderp_Click(object sender, EventArgs e)
    {

    }
    protected void catp_Click(object sender, EventArgs e)
    {

    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        

    }
    protected void GridView6_SelectedIndexChanged1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("~/Images/") + Path.GetFileName(FileUpload1.FileName));
            String link = "Images/" + Path.GetFileName(FileUpload1.FileName);
            string insertQuery = "insert into Data (image) values (@link)";
            SqlCommand com = new SqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@link", link);
            con.Close();
        }
        catch
        {
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {

    }
}