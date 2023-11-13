using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_in_WUC_en : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
          
        if (Session["user_name"] != null )
        {
            if (Session["user_name"].ToString() != "")
                Response.Redirect("student_page.aspx?lang=en");
        }
        //TextBox1.Focus();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        database db = new database();
        try
        {
            db.cn.Open();

            System.Data.DataRow dr;
            System.Data.DataTable dt = db.select(string.Format("select * from std_log where std_log_name='{0}' and std_log_pass='{1}'", TextBox1.Text, TextBox2.Text));
            if (dt.Rows.Count == 0)
            {
                Label6.Text = "user name or password is incorredct ";
                Label7.Text = "if you don't have an account you should  ";
                HyperLink2.NavigateUrl = "sign_up.aspx?lang=en";
                HyperLink2.Text = "Sign Up";
                HyperLink2.Visible = true;
            }
            else
            {
                dr = dt.Rows[0];
                if (!Convert.ToBoolean(dr["log_active"]))
                {
                    Label6.Text = " Sorry dear .. your account isn't activated yet .. you must wait until the VIF manger accept your data..";
                    
                }
                else
                {
                    Session["user_name"] = dr["std_log_name"].ToString();
                    Session["std_num"] = (int)dr["std_id"];
                    //Session["std_active"]=dr["log_active"];
                    dt = db.select(string.Format("select * from student where std_id={0} ", Convert.ToInt32(dr["std_id"])));
                    dr = dt.Rows[0];
                    Session["std_name"] = dr["std_fname"].ToString();
                    Session["std_lname"] = dr["std_lname"].ToString();
                    //Label6.Text = Session["user_name"] + " " + Session["std_id"] + " " + Session["std_active"] + " " + Session["std_name"] + " " + Session["std_lname"];
                   /*
                    if (Session["src"] != null)
                    {
                        if (Session["src"].ToString() != "")
                            Response.Redirect(Session["src"]+".aspx");
                    }
                    * */
                    if (Request["src"] != null)
                    {
                        if (Request["src"] != "" || Request["src"] != " ")
                        {
                            Response.Redirect(Request["src"] + ".aspx?lang=en");
                          
                        }
                    }
                    Response.Redirect("student/default.aspx?lang=en");
                   
                   }
            }
        }
        catch (Exception ex) { Label6.Text = ex.Message; }
        finally { db.cn.Close(); }
        
    }
}