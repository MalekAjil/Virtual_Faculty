using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            db.cn.Open();
            System.Data.DataRow dr;
            System.Data.DataTable dt = db.select("select * from news where arabic = 'false'");
            if (dt.Rows.Count != 0)
            {
                dr = dt.Rows[0];
                Image3.ImageUrl = dr["n_job_pic"].ToString();
                Label1.Text = dr["n_job"].ToString();
                Image4.ImageUrl = dr["n_sol_pic"].ToString();
                Label2.Text = dr["n_solution"].ToString();
                Image1.ImageUrl = dr["n_mark_pic"].ToString();
                Label4.Text = dr["n_mark"].ToString();
                Image5.ImageUrl = dr["n_face_pic"].ToString();
                Label5.Text = dr["n_facebook"].ToString();
                Image6.ImageUrl = dr["n_std_pic"].ToString();
                lblStdName0.Text = dr["n_std"].ToString();
                lblStdName1.Text = dr["n_std"].ToString();
                lblStdName2.Text = dr["n_std"].ToString();
            }
        }
        catch (Exception ex) { Response.Write(ex.Message); }
        finally { db.cn.Close(); }
    }
}