using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class agenderwise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void genderp_Click(object sender, EventArgs e)
    {

        Response.Redirect("agenderwise.aspx");
    }
    protected void catp_Click(object sender, EventArgs e)
    {
        Response.Redirect("acategorywise.aspx");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel2.Visible = true;
    }
}