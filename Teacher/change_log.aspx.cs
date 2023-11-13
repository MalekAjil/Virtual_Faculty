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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        database db = new database();
        try
        {
            db.cn.Open();
            System.Data.DataTable dt = db.select("select t_id from teacher where upper(t_log_name) like upper('" + TextBox1.Text + "') and t_log_pass ='" + TextBox2.Text + "'");
            if (dt.Rows.Count != 0)
            {
                System.Data.DataRow dr = dt.Rows[0];
                int i = db.modify("update teacher set t_log_name='" + TextBox3.Text + "' ,t_log_pass='" + TextBox4.Text + "'  where t_id=" + dr["t_id"].ToString());
                if (i != 0)
                {
                    Label3.Text = "لقد تم تحديث البيانات بنجاح";
                }
                else
                {
                    Label3.Text = "للأسف حدث خطأ أثناء تحديث البيانات";
                }
            }
            else
            {
                Label3.Text = "اسم المستخدم القديم أو كلمة السر القديمة غير صحيحة";
            }

        }
        catch (Exception ex) { Label3.Text = ex.Message; }
        finally { db.cn.Close(); }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}