using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Default2 : System.Web.UI.Page
{
    database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        try
        {
            db.cn.Open();
            System.Data.DataTable dt = db.select("select * from lecture where c_id=" + ddlCourse.SelectedItem.Value);
            if (dt.Rows.Count != 0)
            {
                Panel1.Enabled = true;
                FileUpload1.Enabled = true;
                FileUpload2.Enabled = true;
            }
            else
            {
                Panel1.Enabled = false;
                FileUpload1.Enabled = false;
                FileUpload2.Enabled = false;
            }
        }
        catch (Exception ex) { Response.Write(ex.Message); }
        finally { db.cn.Close(); }

        Image1.Visible = false;
        Label4.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        try
        {
            string sql = "update lecture set";
            string msg="تم إضافة ملف ";
            db.cn.Open();
            if (FileUpload1.FileName!="")
            {
                msg += " الفيديو ";
                FileUpload1.SaveAs(@"e:\vif\LecturesFiles/" + ddlLecture.SelectedItem.Value + ".swf");
                sql += " l_file = 'LecturesFiles/" + ddlLecture.SelectedItem.Value + ".swf'";
                if (FileUpload2.FileName != "")
                {
                    
                    FileUpload1.SaveAs(@"e:\vif\Lectures/" + ddlLecture.SelectedItem.Value + ".pdf");
                    sql += ",l_pdf='LecturesFiles/" + ddlLecture.SelectedItem.Value + ".pdf'";
                    msg += " والكتاب ";
                }
                sql += " where l_id = " + ddlLecture.SelectedItem.Value;
                int i = db.modify(sql);
                if (i != 0)
                {
                    msg+= " بنجاح ";
                    Label4.Text = msg;
                    Image1.Visible = true;
                    //Image1.ImageUrl = "../Images/GIF/word104.gif";
                }
                
            }
            else if (FileUpload2.FileName != "")
            {

                FileUpload1.SaveAs(@"e:\vif\LecturesFiles/" + ddlLecture.SelectedItem.Value + ".pdf");
                sql += " l_pdf='LecturesFiles/" + ddlLecture.SelectedItem.Value + ".pdf'";
                sql += "where l_id = " + ddlLecture.SelectedItem.Value;
                int i = db.modify(sql);
                if (i != 0)
                {
                    Label4.Text = "تم إضافة ملف الكتاب بنجاح";
                    Image1.Visible = true;
                   // Image1.ImageUrl = "../Images/GIF/word104.gif";
                }

            }
            else
            {
                Label4.Text = "عذراً لم يتم إضافة اي ملف ..! لأنك لم تحددأي ملف لتحميله ... ملاحظة في حال وجود ملفات قديمة تم الاحتفاظ بها";
                Image1.Visible = false;
                //Image1.ImageUrl = "";
            }

        }
        catch (Exception ex) {Label4.Text= ex.Message; }
        finally { db.cn.Close(); }
    }
}