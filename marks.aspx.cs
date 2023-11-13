using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {
                db.cn.Open();
                System.Data.DataTable dt = db.select("select std_fname,std_lname,std_father,std_gender from student where std_id=" + TextBox1.Text);
                if (dt.Rows.Count != 0)
                {
                    System.Data.DataRow dr = dt.Rows[0];
                    if (Convert.ToBoolean(dr["std_gender"]))
                        Label1.Text = "هذه نتائج المواد التي قام بالتسجيل عليها " + dr["std_fname"] + " " + dr["std_lname"] + " بن " + dr["std_father"];
                    else
                        Label1.Text = "هذه نتائج المواد التي قامت بالتسجيل عليها " + dr["std_fname"] + " " + dr["std_lname"] + " بنت " + dr["std_father"];
                    Label3.Text = "";
                    Panel2.Visible = true;
                }
                else 
                { 
                    Label3.Text = "لا يوجد طالب بهذا الرقم الرجاء التأكد من الرقم";
                    Panel2.Visible = false;
                    Label1.Text = "";
                }
            }
            catch (Exception ex) { Label3.Text = ex.Message; }
            finally { db.cn.Close(); }
        }
        else
        {
            Label1.Text = "";
            Panel2.Visible = false;
            Label3.Text = "الرجاء ادخال رقم الطالب";
            TextBox1.Focus();
            
        }
    }
}