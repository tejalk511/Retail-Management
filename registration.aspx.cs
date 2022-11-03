using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from RegData where UserName= '" +Unamebox.Text+ "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label22.Visible = true;
            }

            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
       {
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into RegData (Name,UserName,Password,EmailId,MobileNumber,DOB,Gender,City,SecurityQues,c) values (@name,@Uname,@pwd,@email,@mob,@dob,@gender,@city,@secq,@seca)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@name", namebox.Text);
            com.Parameters.AddWithValue("@Uname", Unamebox.Text);
            com.Parameters.AddWithValue("@pwd", pwdbox.Text);
            com.Parameters.AddWithValue("@email", emailbox.Text);
            com.Parameters.AddWithValue("@mob", mobbox.Text);
            com.Parameters.AddWithValue("@dob", dobbox.Text);
            com.Parameters.AddWithValue("@gender", genderbox.SelectedItem.Text.ToString());
            com.Parameters.AddWithValue("@city", citybox.SelectedItem.ToString());
            com.Parameters.AddWithValue("@secq", secqbox.SelectedItem.ToString());
            com.Parameters.AddWithValue("@seca", secabox.Text);

            com.ExecuteNonQuery();
            Panel2.Visible = true;
            Panel1.Visible = false;


            conn.Close();
     
       }
        catch(Exception ex)
        {
            Response.Write("Error:"+ex.ToString());
        }
       Panel3.Visible = false;
       Panel4.Visible = false;
       Panel5.Visible = true;
       Panel6.Visible = true;

    }
}