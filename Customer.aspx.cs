using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        
        Panel2.Visible = false;
        Panel3.Visible = true;
    
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
    //    try
    //    {
    //        Guid newGUID1 = Guid.NewGuid();
    //        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
    //        conn.Open();
    //        string insertQuery = "insert into CustData (UID,FirstName,LastName,MobileNo,Address,Email,ProductPurchased,PaymentMethod) values (@UID,@firstn,@lastn,@mob,@add,@emailid,@pp,@pay)";
    //        SqlCommand com = new SqlCommand(insertQuery, conn);
    //        com.Parameters.AddWithValue("@UID", newGUID1.ToString());
    //        com.Parameters.AddWithValue("@firstn", firstnbox.Text);
    //        com.Parameters.AddWithValue("@lastn", lastnbox.Text);
    //        com.Parameters.AddWithValue("@mob", mobbox.Text);
    //        com.Parameters.AddWithValue("@add", addbox.Text);
    //        com.Parameters.AddWithValue("@emailid", emailidbox.Text);
    //        com.Parameters.AddWithValue("@pp", ppbox.Text);
    //        com.Parameters.AddWithValue("@pay", paybox.SelectedItem.Text.ToString());

    //        com.ExecuteNonQuery();
    //        Panel1.Visible = false;
    //        conn.Close();

    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("Error:" + ex.ToString());
    //    }
    //    Response.Redirect("Customer.aspx");
    //}
    //protected void Button5_Click(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
    //    conn.Open();

    //    string searchQuery = "select * from CustData where FirstName = '" +Searchbox.Text+ "'";
    //    SqlCommand com = new SqlCommand(searchQuery, conn);
    //    SqlDataReader dr = com.ExecuteReader();
    //    bool recordfound = dr.Read();
    //    if (recordfound)
    //    {
    //        Label10.Visible = false;
    //        Panel2.Visible = true;
    //        uidl.Text = dr["UID"].ToString();
    //        firstnl.Text = dr["FirstName"].ToString();
    //        lastnl.Text = dr["LastName"].ToString();
    //        mobl.Text = dr["MobileNo"].ToString();
    //        addl.Text = dr["Address"].ToString();
    //        emailidl.Text = dr["Email"].ToString();
    //        ppl.Text = dr["ProductPurchased"].ToString();
    //        payl.Text = dr["PaymentMethod"].ToString();
    //    }
    //    else
    //    {
    //        Label10.Visible = true;
    //    }
    //    conn.Close();

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string searchQuery = "select * from Data where custfname = '" + Searchbox.Text + "'";
            SqlCommand com = new SqlCommand(searchQuery, conn);
            SqlDataReader dr = com.ExecuteReader();
            bool recordfound = dr.Read();
            if (recordfound)
            {
                Label1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = true;
 
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
}