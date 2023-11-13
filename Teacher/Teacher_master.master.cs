using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_master : System.Web.UI.MasterPage
{
    public database db = new database();
    //int l_count=0;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["Tuser_name"] == null || Session["Tuser_name"].ToString() == "") && (Session["t_num"] == null || Session["t_num"].ToString() == ""))
        {
            Response.Redirect("sign_in.aspx");
        }
        else
        {
            try
            {
                int season = (DateTime.Now.Month < 10 && DateTime.Now.Month >= 5 ? 2 : 1);

                db.cn.Open();
                //DataRow dr;
                System.Data.DataTable dt = db.select(string.Format("select  t_fname,t_lname from teacher where t_id={0} ", Convert.ToInt32(Session["t_num"])));
                if (dt.Rows.Count != 0)
                {

                    System.Data.DataRow dr = dt.Rows[0];

                    Label2.Text = dr["t_fname"] + "  " + dr["t_lname"];
                    this.Page.Title =" صفحة المدرس : "+ dr["t_fname"] + "  " + dr["t_lname"];
                }
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally { db.cn.Close(); }


        }

        
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Tuser_name"]="";
        Session["t_num"] = "";
         Response.Redirect("../Default.aspx");
    }
}
