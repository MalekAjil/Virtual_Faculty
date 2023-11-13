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
                int j = db.modify(string.Format("insert into course (c_name,c_year,c_season,t_id,dept_id,c_price,c_notes) values ('{0}',{1},{2},{3},{4},{5},'{6}')", txtCname.Text, ddlYear.SelectedIndex, ddlSeason.SelectedIndex, ddlTeacher.SelectedItem.Value, ddlDept.SelectedItem.Value, txtCprice.Text,txtNotes.Text));
                if (j != 0)
                { //Response.Redirect("student_page.aspx");
                    Label3.Text = "لقد تم ادخال البيانات بنجاح ";
                    txtCname.Text = "";
                    txtCprice.Text = "";
                    
                      dt = db.select(string.Format("select c_id from course where c_name = '{0}' and dept_id = {1} ", txtCname.Text,ddlDept.SelectedItem.Value));
                      if (dt.Rows.Count != 0)
                      {
                          dr = dt.Rows[0];
                          //create new folder in courses folder with name c_id
                          
                      }
                }

            }
            catch (Exception ex) { Label3.Text = ex.Message; }
            finally { db.cn.Close(); }
        }

    }

    bool check9()
    { 
       if (txtCname.Text == "")
        {
            Label3.Text="الرجاء إدخال اسم المادة  ";
            txtCname.Focus();
            Label6.Text="*";
            return false;
        }
        else if (txtCname.Text.Length < 2)
        {
            Label3.Text = "يجب عليك ادخال اسم بأكثر من حرفين";
            txtCname.Focus();
            Label6.Text = "*";
            return false;
        }
        else { Label6.Text = ""; }

        if (txtCprice.Text == "")
        {
            Label3.Text="الرجاء إدخال سعر المادة";
            txtCprice.Focus();
            Label7.Text = "*";
            return false;
        }
        
        else { Label7.Text = ""; }

        if (ddlYear.SelectedIndex == 0)
        {
            Label3.Text = "الرجاء اختيار السنة  الدراسية";
            txtCprice.Focus();
            Label10.Text = "*";
            return false;
        }
        else { Label10.Text = ""; }

        if (ddlSeason.SelectedIndex == 0)
        {
            Label3.Text = "الرجاء اختيار الفصل الدراسي ";
            txtCprice.Focus();
            Label11.Text = "*";
            return false;
        }
        else { Label11.Text = ""; }

        return true;
    
        }
}
