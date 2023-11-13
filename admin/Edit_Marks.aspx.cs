using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Default2 : System.Web.UI.Page
{
    public database db = new database();
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible = false;
        lblMsg.Text = "";
    }
    
    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlCourse.Enabled = true;
    }
    protected void ddlFilter_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddlFilter.SelectedIndex)
        {
            case 0: ; break;// MarksDataSource.SelectCommand = "SELECT Student.std_id, Student.std_fname + ' ' + Student.std_father + ' ' + Student.std_lname AS std_name, Std_Crs.std_mark FROM Std_Crs INNER JOIN Student ON Std_Crs.std_id = Student.std_id WHERE (Std_Crs.c_id = " + ddlCourse.SelectedItem.Value + ")"; break;
            case 1: MarksDataSource.SelectCommand = "SELECT Student.std_id, Student.std_fname + ' ' + Student.std_father + ' ' + Student.std_lname AS std_name, Std_Crs.std_mark FROM Std_Crs INNER JOIN Student ON Std_Crs.std_id = Student.std_id WHERE (Std_Crs.std_mark < 60) AND (Std_Crs.c_id = " + ddlCourse.SelectedItem.Value + ")"; break;
            case 2: MarksDataSource.SelectCommand = "SELECT Student.std_id, Student.std_fname + ' ' + Student.std_father + ' ' + Student.std_lname AS std_name, Std_Crs.std_mark FROM Std_Crs INNER JOIN Student ON Std_Crs.std_id = Student.std_id WHERE (Std_Crs.std_mark > 60) AND (Std_Crs.c_id = " + ddlCourse.SelectedItem.Value + ")"; break;
            default: MarksDataSource.SelectCommand = "SELECT Student.std_id, Student.std_fname + ' ' + Student.std_father + ' ' + Student.std_lname AS std_name, Std_Crs.std_mark FROM Std_Crs INNER JOIN Student ON Std_Crs.std_id = Student.std_id WHERE (Std_Crs.c_id = " + ddlCourse.SelectedItem.Value + ")"; break;
        }       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        foreach (GridViewRow gvr in GridView1.Rows)
        {            
            TextBox tb = (TextBox)gvr.FindControl("tb");
            if (tb.Text == "") gvr.Cells[3].Text = "0";           
            if (Convert.ToInt32(tb.Text) <= 100 && Convert.ToInt32(tb.Text) >= 0)
            {                 
                try
                {
                    bool updtCrsNum=false;//,updtYear=false;
                    db.cn.Open();
                    DataRow dr;
                    DataTable dt = db.select("select std_mark from std_crs where std_id=" + gvr.Cells[0].Text);
                    if (dt.Rows.Count != 0)
                    {
                        dr = dt.Rows[0];
                        if (Convert.ToInt32(dr["std_mark"]) < 60)
                            updtCrsNum = true;
                        else
                            updtCrsNum = false;
                    }
                  
                    int i = db.modify("update std_crs set std_mark=" + tb.Text + " where std_id=" + gvr.Cells[0].Text +" and c_id="+ddlCourse.SelectedItem.Value);
                    if (i != 0)
                    {
                        if (Convert.ToInt32(tb.Text) >= 60 && updtCrsNum)
                            db.modify("update student set std_remains_sub=std_remains_sub-1 where std_id=" + gvr.Cells[0].Text);                                                 
                        else if (Convert.ToInt32(tb.Text) < 60 && !updtCrsNum)
                            db.modify("update student set std_remains_sub=std_remains_sub+1 where std_id=" + gvr.Cells[0].Text);
                        dt = db.select("select std_d_id,std_year,std_remains_sub from student where std_id=" + gvr.Cells[0].Text);
                        if (dt.Rows.Count != 0)
                        {
                            dr = dt.Rows[0];
                            DataTable dtt = db.select("select d_years_num from department where d_id=" + dr["std_d_id"]);
                            if (dtt.Rows.Count != 0)
                            {
                                DataRow drr = dtt.Rows[0];

                                if (Convert.ToInt32(dr["std_year"]) < Convert.ToInt32(drr["d_years_num"]) && Convert.ToInt32(dr["std_remains_sub"]) == 4)
                                    db.modify("update student set std_year=std_year+1 where std_id=" + gvr.Cells[0].Text);
                                //else if(Convert.ToInt32(dr["std_remains_sub"]) > 4 &&
                            }
                        }
                       
                        Image1.Visible = true;
                        lblMsg.Text = "لقد تم تحديث البيانات بنجاح -_-";
                    }
                    else
                    {
                        Image1.Visible = false;
                        lblMsg.Text ="عذراً ... للاسف قد حصل مشكلة أثناء تحديث البيانات يرجى المحاولة لاحقاً";
                    }
                }
                catch (Exception ex)
                {
                    Image1.Visible = false;
                    lblMsg.Text = ex.Message;
                }
                finally { db.cn.Close(); }
            }
            else
            {
                Image1.Visible = false;
                lblMsg.Text = "علامة غير مسموحة (يجب أن تكون العلامة بين 0 و 100 )";
                tb.Focus();                
                break;                
            }           
        }
    }

    
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
   if (GridView1.HasControls())
        {
            Label3.Text = "عدد الطلاب : " + GridView1.Rows.Count;
            Button1.Enabled = true;
        }
        else
        {
            Label3.Text = "لا يوجد طلاب ..!!";
            Button1.Enabled = false;
        }     
    }  
}