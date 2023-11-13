using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            db.cn.Open();
            System.Data.DataRow dr;
            System.Data.DataTable dt = db.select("select * from news where arabic = 'true'");
            if (dt.Rows.Count != 0)
            {
                dr = dt.Rows[0];
                Image3.ImageUrl = dr["n_job_pic"].ToString();
                Label1.Text = dr["n_job"].ToString();
                HyperLink3.NavigateUrl = "~/news.aspx?n=n_job&ar=true";
                Image4.ImageUrl = dr["n_sol_pic"].ToString();
                Label2.Text = dr["n_solution"].ToString();
                HyperLink4.NavigateUrl = "~/news.aspx?n=n_sol&ar=true";
                Image1.ImageUrl = dr["n_mark_pic"].ToString();
                Label4.Text = dr["n_mark"].ToString();
                HyperLink5.NavigateUrl = "~/news.aspx?n=n_mark&ar=true";
                Image5.ImageUrl = dr["n_face_pic"].ToString();
                Label5.Text = dr["n_facebook"].ToString();
                HyperLink6.NavigateUrl = "~/news.aspx?n=n_face&ar=true";
                Image6.ImageUrl = "student/"+dr["n_std_pic"].ToString();
                lblStdName0.Text = dr["n_std"].ToString();
                lblStdName1.Text = dr["n_std"].ToString();
                lblStdName2.Text = dr["n_std"].ToString();
                HyperLink7.NavigateUrl = "~/news.aspx?n=n_std&ar=true";
                HyperLink8.NavigateUrl = "~/news.aspx?n=n_other&ar=true";
            }
        }
        catch (Exception ex) { Response.Write(ex.Message); }
        finally { db.cn.Close(); }
    }
}