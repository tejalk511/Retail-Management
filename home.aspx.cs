using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Constant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Setimageurl();
 
        }
    }

    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        Setimageurl();
    }

    private void Setimageurl()
    {
        Random ran = new Random();
        int i = ran.Next(1, 4);
        Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
    }
}