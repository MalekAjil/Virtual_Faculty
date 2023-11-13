using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public database db = new database();

    protected void Page_Load(object sender, EventArgs e)
    {
        database db = new database();
        try
        {
            int season = (DateTime.Now.Month < 9 && DateTime.Now.Month >= 5 ? 2 : 1);

            db.cn.Open();
            //DataRow dr;
            System.Data.DataTable dt = db.select(string.Format("select  std_fname,std_lname,std_picture from student where std_id={0} ", Convert.ToInt32(Session["std_num"])));
            if (dt.Rows.Count != 0)
            {
                System.Data.DataRow dr = dt.Rows[0];
                this.Page.Title = "صفحة الطالب : " + dr["std_fname"] + "  " + dr["std_lname"];
                
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally { db.cn.Close(); }

    }
}