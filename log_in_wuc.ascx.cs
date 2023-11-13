using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class log_in_wuc : System.Web.UI.UserControl
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        
          
        if (Session["user_name"] != null && Session["user_name"].ToString() != "")
        {            
                Response.Redirect("student/");
        }
        TextBox1.Focus();
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

            DataRow dr;
            DataTable dt = db.select(string.Format("select * from std_log where std_log_name='{0}' and std_log_pass='{1}'", TextBox1.Text, TextBox2.Text));
            if (dt.Rows.Count == 0)
            {
                Label6.Text = "اسم المستخدم أو كلمة المرور غير صحيحة ";
                Label7.Text = "ان لم تكن تملك حساباً فعليك تسجيل حساب جديد في صفحة ";
                HyperLink2.NavigateUrl = "sign_up.aspx";
                HyperLink2.Text = "تسجيل جديد";
                HyperLink2.Visible = true;
            }
            else
            {
                dr = dt.Rows[0];
                if (!Convert.ToBoolean(dr["log_active"]))
                {
                    Label6.Text = " عذرا عزيزي الطالب لم يتم تفعيل حسابك بعد\n الرجاء الانتظار حتى يتم تفعيل حسابك من قبل مدير الموقع\n وشكراً ";
                    
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
                            Response.Redirect(Request["src"] + ".aspx");
                    }
                    Response.Redirect("student/");
                   
                   }
            }
        }
        catch (Exception ex) { Label6.Text = ex.Message; }
        finally { db.cn.Close(); }
        
    }
}