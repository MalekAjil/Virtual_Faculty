using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    database db=new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["std_num"] == null || Session["std_num"].ToString() == "")
            Response.Redirect("index_ar.aspx");
        else
        {
            if (Request["msg"] != null && Request["msg"] =="error")
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "انت مسجل مسبقاً في الكلية ولكن اذا لم تكن مسجلاً لحساب دخول لسبب ما فيمكنك التسجيل هنا ..\n مع العلم أنه لا يمكنك تسجيل أكثر من حساب دخول ";

            }

            Label5.Text = Session["std_num"].ToString();
        }
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (check1())
        {
            try
            {
                db.cn.Open();
               // DataRow dr;

                DataTable df = db.select(string.Format("select * from std_log where std_id='{0}'", Label5.Text));
                if (df.Rows.Count != 0)
                    Label3.Text = "عذراً لا يمكنك تسجيل أكثر من حساب ";

                else
                {
                    DataTable dt = db.select(string.Format("select * from std_log where std_log_name='{0}'", TextBox1.Text, Label5.Text));
                    if (dt.Rows.Count == 0)
                    {
                        /*
                         * string sql = string.Format("insert into std_log (std_id,std_log_name,std_log_pass,log_active) values ({0},'{1}','{2}',0)", Label5.Text, TextBox1.Text, TextBox2.Text);
                       int i=  db.modify(sql);
                       if (i != 0)
                       {
                           Response.Write("succeeded");
                       }*/
                        dataDataContext x = new dataDataContext();
                        var ss = new Std_Log
                        {
                            std_id = Convert.ToInt32(Label5.Text),
                            std_log_name = TextBox1.Text,
                            std_log_pass = TextBox2.Text,
                            log_active = false
                        };
                        x.Std_Logs.InsertOnSubmit(ss);
                        x.SubmitChanges();
                        dt = db.select(string.Format("select * from Std_log where std_log_name='{0}' and std_log_pass='{1}' ", TextBox1.Text, TextBox2.Text));
                        if (dt.Rows.Count == 0)
                        {
                            Label3.Text = " عذراً عزيزي الطالب حدثت مشكلة أثناء التسجيل .. الرجاء المحاولة لاحقاً  ";
                        }
                        else
                        {
                            Label3.Text = "succeeded";
                            Response.Redirect("reg_conclosion.aspx?std_num="+Session["std_num"]);
                        }

                    }
                    else
                    {
                        Label3.Text = "عذراً إن اسم المستخدم هذا مستخدم مسبقاً الرجاء ان تختار غيره ";
                    }
                }
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally { db.cn.Close(); }
        }
        else 
        {  }
    }

    private bool check1()
    {
        if (TextBox1.Text == "")
        {
            Label3.Text="الرجاء إدخال اسم المستخدم ";
            TextBox1.Focus();
            Label6.Text="*";
            return false;
        }
        else if (TextBox1.Text.Length < 2)
        {
            Label3.Text = "يجب عليك ادخال اسم بأكثر من حرفين";
            TextBox1.Focus();
            Label6.Text = "*";
            return false;
        }
        else { Label6.Text = ""; }

        if (TextBox2.Text == "")
        {
            Label3.Text="الرجاء إدخال كلمة السر";
            TextBox2.Focus();
            Label7.Text = "*";
            return false;
        }
        else if (TextBox2.Text.Length < 4)
        {
            Label3.Text="يجب عليك ادخال كلمة سر أكثر من 4 حروف";
            TextBox2.Focus();
            Label7.Text = "*";
            return false;
        }
        else { Label7.Text = ""; }
        return true;
    
    }
}