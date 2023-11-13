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

        
          
        if (Session["Tuser_name"] != null )
        {
            if (Session["Tuser_name"].ToString() != "")
                Response.Redirect("~/Default.aspx");
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
            DataTable dt = db.select(string.Format("select * from teacher where t_log_name='{0}' and t_log_pass='{1}'", TextBox1.Text, TextBox2.Text));
            if (dt.Rows.Count == 0)
            {
                Label6.Text = "اسم المستخدم أو كلمة المرور غير صحيحة ";
               
            }
            else
            {
                dr = dt.Rows[0];

                    Session["Tuser_name"] = dr["t_log_name"].ToString();
                    Session["t_num"] = (int)dr["t_id"];
                    //Session["std_active"]=dr["log_active"];
                    Response.Redirect("~/teacher/Default.aspx");
                                     
            }
        }
        catch (Exception ex) { Label6.Text = ex.Message; }
        finally { db.cn.Close(); }
        
    }
}