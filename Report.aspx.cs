using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void Button12_Click1(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
}