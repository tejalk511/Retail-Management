﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel4.Visible = true;
        
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel4.Visible = true;
       

    }
    protected void catp_Click(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
       
        Panel4.Visible = true;
       
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Panel1.Visible = true;
        
    }
    protected void genderp_Click(object sender, EventArgs e)
    {

    }
}