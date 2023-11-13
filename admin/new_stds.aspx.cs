using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtStdId.Text != "")
        {
            database db = new database();
            try
            {
                db.cn.Open();
                System.Data.DataRow dr;

                System.Data.DataTable dt = db.select("select * from student where std_id in (SELECT [std_id]  FROM [dbo].[Std_Log] where [log_active] = 0 and std_id=" + txtStdId.Text + ")  and std_reg_date between GETDATE()-34 and GETDATE()");
                if (dt.Rows.Count == 1)
                {
                    dr = dt.Rows[0];
                    int i = db.modify("update std_log set log_active = 'True' where std_id = " + dr["std_id"]);
                    if (i != 0)
                    {
                        Label38.Text = "لقد تم تفعيل حساب الطالب  " + dr["std_fname"] + "  " + dr["std_lname"];
                        int j = db.modify("update news set n_std = '" + dr["std_fname"] + " " + dr["std_lname"] + "', n_std_details = 'يذكر أن الطالب " + dr["std_fname"] + " " + dr["std_lname"] + "<br /> قد انجز اكمل تعليمه وقد حصل على شهادة " + dr["std_diploma"] + "<br /> باختصاص " + dr["std_specialization"] + "',n_std_pic= '" + dr["std_picture"] + "' where arabic='true'");
                    }
                }
                else
                {
                    Label38.Text = "هذا الرقم لا يخص اي طالب مستجد ";

                }
            }

            catch (Exception ex)
            {
                Label38.Text = ex.Message;
            }
            finally { db.cn.Close(); }



        }
        else
        {
            Label38.Text = "الرجاء ادخال رقم الطالب ";
            txtStdId.Focus();
        }
    }
    protected void txtStdId_TextChanged(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        if (txtStdId.Text != "")
        {
            database db = new database();
            try
            {
                db.cn.Open();
               // System.Data.DataRow dr;

                int i = db.modify("delete from student where std_id =" + txtStdId.Text);
                if (i!=0)
                {/*
                    int j = db.modify("delete from std_log where std_id = " + txtStdId.Text);
                    if (j != 0)
                    {*/
                        Label38.Text = "لقد تم حذف بيانات الطالب  ";
                    //}
                }
                else
                {
                    Label38.Text = "هذا الرقم لا يخص اي طالب مستجد ";

                }
            }

            catch (Exception ex)
            {
                Label38.Text = ex.Message;
            }
            finally { db.cn.Close(); }



        }
        else
        {
            Label38.Text = "الرجاء ادخال رقم الطالب ";
            txtStdId.Focus();
        }
    }
    
}