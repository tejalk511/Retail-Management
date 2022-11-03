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

public partial class ForgotPassword : System.Web.UI.Page
{
    static string pwd, seca,username;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select UserName,Password,SecurityQues,SecurityAns from RegData where UserName = @name", con);
        cmd.Parameters.Add("@name", userbox.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            username = dr["UserName"].ToString();
            pwd = dr["Password"].ToString();
            secquestlabel.Text = dr["SecurityQues"].ToString();
            seca = dr["SecurityAns"].ToString();
            Panel3.Visible = false;
            Panel5.Visible = true;
            errormsg.Visible = false;
        }
        else
        {
            Panel3.Visible = true;
            Panel5.Visible = false;
            errormsg.Visible = true;
            userbox.Text = "";
            userbox.Focus();
        }
        con.Close();
        
         
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (secansbox.Text == seca)
        {
            Label5.Visible = true;
            Label5.Text = "Your Password is " + pwd; 
            Label5.ForeColor = Color.Green;
        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "Incorrect Security Answer";
            Label5.ForeColor = Color.Red;
            secansbox.Text = "";
            secansbox.Focus();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = true;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select Password,SecurityQues,SecurityAns from RegData where UserName = @name", con);
        if (TextBox1.Text != pwd)
        {
            Label11.Visible = true; 
            Label11.Text = "Incorrect Old Password";
            Label11.ForeColor = Color.Red;
        }
        else if (TextBox2.Text == pwd)
        {
            Label11.Visible = true; 
            Label11.Text = "New password can not be same as Old Password";
            Label11.ForeColor = Color.Red;
        }
        else if (TextBox2.Text != TextBox3.Text)
        {
            Label11.Visible = true; 
            Label11.Text = "Password and Confirm Password Doesnot Match";
            Label11.ForeColor = Color.Red;
        }
        else
        {

            SqlCommand cmd2 = new SqlCommand("update RegData set Password = @pwd where UserName = @name", con);
            cmd2.Parameters.Add("@pwd", TextBox2.Text);
            cmd2.Parameters.Add("@name", username);
            cmd2.ExecuteNonQuery();
            con.Close();
            Label11.Visible = true; 
            Label11.Text = "Password Changed Successfully";
            Label11.ForeColor = Color.Green;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = true;
    }
}