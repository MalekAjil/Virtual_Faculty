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
        if ((Session["user_name"] == null || Session["user_name"].ToString() == "") && (Session["std_num"] == null || Session["std_num"].ToString() == ""))
        {
            Response.Redirect("../sign_in.aspx");
        }
        else
        {
            try
            {
                int season = (DateTime.Now.Month < 9 && DateTime.Now.Month >= 5 ? 2 : 1);

                db.cn.Open();
                //DataRow dr;
                System.Data.DataTable dt = db.select(string.Format("select  std_fname,std_lname,std_picture from student where std_id={0} ", Convert.ToInt32(Session["std_num"])));
                if (dt.Rows.Count != 0)
                {

                    System.Data.DataRow dr = dt.Rows[0];

                    Label2.Text = dr["std_fname"] + "  " + dr["std_lname"];
                    //this.Page.Title = "صفحة الطالب : " + dr["std_fname"] + "  " + dr["std_lname"];
                    Image2.ImageUrl = dr["std_picture"].ToString();

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
        Session["user_name"]="";
        Session["std_num"] = "";
        Session["std_name"] = "";
        Session["std_lname"] = "";
        Response.Redirect("../Default.aspx");
    }
}
