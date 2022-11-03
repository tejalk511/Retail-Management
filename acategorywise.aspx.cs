using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class acategorywise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void genderp_Click(object sender, EventArgs e)
    {

    }
    protected void catp_Click(object sender, EventArgs e)
    {
        Response.Redirect("acategorywise.aspx");
    }
}