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



public partial class newprod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(UNo as int )),0) + 1 from Data", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        TextBox1.Text = dt.Rows[0][0].ToString();
        TextBox2.Focus();
        

        
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
    protected void Button8_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            FileUpload1.SaveAs(Server.MapPath("~/Images/") + Path.GetFileName(FileUpload1.FileName));
            String link = "Images/" + Path.GetFileName(FileUpload1.FileName);
            string insertQuery = "insert into Data (UNo,Itemname,image,description,Price,quantity,category,gender) values (@No,@Itemnam,@link,@despt,@price,@quant,@cat,@gend)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@No", TextBox1.Text);
            com.Parameters.AddWithValue("@Itemnam", TextBox2.Text);
            com.Parameters.AddWithValue("@link", link);
            com.Parameters.AddWithValue("@despt", TextBox4.Text);
            com.Parameters.AddWithValue("@price", TextBox9.Text);
            com.Parameters.AddWithValue("@quant", TextBox10.Text);
            com.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Text.ToString());
            com.Parameters.AddWithValue("@gend", DropDownList2.SelectedItem.Text.ToString());
            
            com.ExecuteNonQuery();
            Label12.Visible = true;
            Response.Redirect("newprod.aspx");
            




            conn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
            Label13.Visible = true;

        }


    }
}