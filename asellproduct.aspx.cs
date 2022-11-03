using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections;

public partial class asoldproduct : System.Web.UI.Page
{
    static string price, Des, img, strBase64, sum, sum1, Pname;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string Query = "Select UNo,Itemname,image,description,Price from Data where Itemname= @pname";
            SqlCommand cmd1 = new SqlCommand(Query, conn);
            cmd1.Parameters.AddWithValue("@pname", DropDownList1.SelectedItem.ToString());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                TextBox5.Text = dr1["Price"].ToString();
                Label7.Text = dr1["description"].ToString();

                Image1.ImageUrl = dr1["image"].ToString();
                
            }
             
            conn.Close();

        }
        catch (Exception)
        {
            Response.Write(" ");
        }
        
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }
    protected void Button14_Click1(object sender, EventArgs e)
    {
        
        Panel2.Visible = false;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel6.Visible = false;
    }
    protected void Button12_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox4.Text = ((float.Parse(TextBox5.Text) * float.Parse(TextBox2.Text)) - float.Parse(TextBox3.Text)).ToString();
        }
        catch
        {

        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        
        
   }

    protected void Button16_Click(object sender, EventArgs e)
    {
        //Pname = DropDownList1.SelectedItem.ToString();
        Panel2.Visible = false;
        Panel6.Visible = true;
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        
        try
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RConnectionString"].ConnectionString);
            conn.Open();
            string Query = "Select * from Data where Itemname = '" +TextBox13.Text+ "' ";
            SqlCommand cmd1 = new SqlCommand(Query, conn);
            //cmd1.Parameters.AddWithValue("@pname", DropDownList1.SelectedItem.ToString());
            string custdetails = "update Data set (custfname=@cfname,custlname=@clname,gender=@gen,mobile=@mob,email=@mail,payment=@pay) where Itemname = '" + TextBox13.Text + "' ";
            SqlCommand com1 = new SqlCommand(custdetails, conn);
            com1.Parameters.AddWithValue("@cfname", TextBox10.Text);
            com1.Parameters.AddWithValue("@clname", TextBox11.Text);
            com1.Parameters.AddWithValue("@gen", DropDownList2.SelectedItem.ToString());
            com1.Parameters.AddWithValue("@mob", TextBox12.Text);
            com1.Parameters.AddWithValue("@mail", TextBox8.Text);
            com1.Parameters.AddWithValue("@pay", DropDownList4.SelectedItem.ToString());

            Panel6.Visible = false;
            Panel2.Visible = false;
            Panel8.Visible = true;
            conn.Close();
            
        }
        catch (Exception)
        {
            Label17.Visible = true;
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox4.Text = ((float.Parse(TextBox5.Text) * float.Parse(TextBox2.Text)) - float.Parse(TextBox3.Text)).ToString();

        }
        catch
        {

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox13.Text = DropDownList1.SelectedItem.ToString();

        }
        catch
        {

        }
    }
}