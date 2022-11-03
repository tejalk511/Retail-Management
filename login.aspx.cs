using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
        //conn.Open();
        //string checkuser = "select count(*) from RegData where UserName= '" + userbox.Text + "'";
        //SqlCommand com = new SqlCommand(checkuser, conn);
        //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //conn.Close();
        //if (temp == 1)
        //{
        //    conn.Open();
        //    string checkpwdquery = "select password from RegData where UserName = '" + userbox.Text + "'";
        //    SqlCommand passComm = new SqlCommand(checkpwdquery, conn);
        //    String Password = passComm.ExecuteScalar().ToString().Replace(" ","");
        //    if (Password == pwdbox.Text)
        //    {
        //        Session["New"] = userbox.Text;
        //        Response.Redirect("Customer.aspx");
        //        Label8.Visible = false;
        //    }
        //    else
        //    {
        //        Label8.Visible = true;
                
        //    }
        //}
        //else
        //{
        //    Label8.Visible = true;
        //}

    }
}