using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
       {
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Feedback (Name,Email,Feedback,Status) values (@vname,@vmail,@vfeedback,@vstatus)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@vname", vname.Text);
            com.Parameters.AddWithValue("@vmail", vmail.Text);
            com.Parameters.AddWithValue("@vfeedback", vfeedback.Text);
            com.Parameters.AddWithValue("@vstatus", "UNREAD");

            com.ExecuteNonQuery();
            Label3.Visible = true;
            Label3.Text = "Your feedback have been sent successfully";
            Label3.ForeColor = Color.Green;
            vname.Text = "";
            vmail.Text = "";
            vfeedback.Text = "";
            vname.Focus();


            conn.Close();
     
       }
        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = "Something went wrong, please try again";
            Label3.ForeColor = Color.Red;
            vname.Text = "";
            vmail.Text = "";
            vfeedback.Text = "";
            vname.Focus();
        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}