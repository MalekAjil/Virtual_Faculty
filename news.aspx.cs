using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        database db = new database();
        if ((Request["n"] != null && Request["n"] != "") && (Request["ar"] != null && Request["ar"] != ""))
        {

            try
            {
                db.cn.Open();
                System.Data.DataRow dr;
                string sql = "select " + Request["n"] + "_pic," + Request["n"] + "_details from news where arabic='" + Request["ar"] + "'";
                System.Data.DataTable dt = db.select(sql);
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];
                    Image3.ImageUrl = dr[0].ToString();
                   lblMsg.Text= dr[1].ToString();
                }
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { db.cn.Close(); }
        }
        else
        {
            lblMsg.Text="<h2>لا يوجد شي لاظهاره </h2>";
        }
    }
}