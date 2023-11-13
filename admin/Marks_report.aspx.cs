using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (TxtId.Text == "")
        {
            Label3.Text = "ادخل رقم الطالب";
            HyperLink1.Enabled = false;
        }
        else
        {
            Label3.Text = "";
            HyperLink1.NavigateUrl = "~/admin/std_marks.aspx?std_num=" + TxtId.Text;
            HyperLink1.Enabled = true;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("std_marks.aspx?std_num=" + TxtId.Text, false);
    }
}