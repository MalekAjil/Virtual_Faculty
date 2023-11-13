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
    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlCourse.Enabled = true;
        Panel1.Enabled = true;
    }

    public database db = new database();
    public System.Data.DataRow dr;
    public System.Data.DataTable dt;

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (check9())
        {
            try
            {
                db.cn.Open();
                dt = db.select(string.Format("select count(*) as count from lecture where c_id = {0} ", ddlCourse.SelectedItem.Value));
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];

                    dataDataContext d = new dataDataContext();
                    var l = new Lecture
                    {
                        c_id = Convert.ToInt32(ddlCourse.SelectedItem.Value),
                        l_num = Convert.ToInt32(dr["count"]) + 1,
                        l_name = txtLecture.Text,
                        l_date = Convert.ToDateTime(txtDate.Text),
                        l_time = TimeSpan.Parse(txtTime.Text)
                    };
                    d.Lectures.InsertOnSubmit(l);
                    d.SubmitChanges();

                    
                    /*    int j = db.modify(string.Format("insert into lecture (c_id,l_num,l_name,l_date,l_time) values ({0},{1},'{2}','{3}','{4}')",ddlCourse.SelectedItem.Value,Convert.ToInt32(dr["count"])+1, txtLecture.Text,txtDate.Text,txtTime.Text));
                    if (j != 0)
                    { //Response.Redirect("student_page.aspx");
                     */ 
                     Label3.Text = "لقد تم ادخال البيانات بنجاح ";
                        txtLecture.Text = "";
                        txtDate.Text = "";
                        txtTime.Text = "";
                        dt = db.select(string.Format("select l_id from lecture where c_id = {0} and l_name = '{1}' ",ddlCourse.SelectedItem.Value,txtLecture.Text));
                        if (dt.Rows.Count != 0)
                        {
                            dr = dt.Rows[0];
                            //create new folder in courses folder in name c_id folder with name l_id
                        }
                    
                }
            }
            catch (Exception ex) { Label3.Text = ex.Message; }
            finally { db.cn.Close(); }
        }

    }

    bool check9()
    {
        if (txtLecture.Text == "")
        {
            Label3.Text = "الرجاء إدخال اسم المحاضرة  ";
            txtLecture.Focus();
            Label6.Text = "*";
            return false;
        }
        else if (txtLecture.Text.Length < 2)
        {
            Label3.Text = "يجب عليك ادخال اسم بأكثر من حرف";
            txtLecture.Focus();
            Label6.Text = "*";
            return false;
        }
        else { Label6.Text = ""; }

        if (txtDate.Text == "")
        {
            Label3.Text = "الرجاء إدخال التاريخ";
            txtDate.Focus();
            Label7.Text = "*";
            return false;
        }

        else { Label7.Text = ""; }


        if (txtTime.Text == "")
        {
            Label3.Text = "الرجاء إدخال التوقيت";
            txtTime.Focus();
            Label10.Text = "*";
            return false;
        }

        else { Label10.Text = ""; }

        if (ddlYear.SelectedIndex == 0)
        {
            Label3.Text = "الرجاء اختيار السنة  الدراسية";
            txtTime.Focus();
            Label11.Text = "*";
            return false;
        }
        else { Label11.Text = ""; }

        return true;

    }

  
}
