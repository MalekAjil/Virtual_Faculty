using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    database db = new database();
    //System.Data.DataRow tr;
    System.Data.DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
            Panel1.Enabled = true;
        else
            Panel1.Enabled = false;


        if (RadioButton2.Checked == true)
            Panel2.Enabled = true;
        else
            Panel2.Enabled = false;

        if (RadioButton2.Checked == true)
        {
            StdDataSource.SelectCommand = "SELECT * FROM [Student]" ;
            GridView1.DataBind();
        }

    }
    /* extra code
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (r1.Checked)
        {
            try
            {
               /* db.cn.Open();
                dt = db.select("select * from student");
                GridView1.DataSource = dt;
              //
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            catch (Exception ex) { Label6.Text = ex.Message; }
           // finally { db.cn.Close(); }
        }
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (r2.Checked)
        {
            if (txtID.Text != "")
            {
                try
                {
                   /* db.cn.Open();
                    dt = db.select("select * from student where std_id=" + txtID.Text);
                    GridView1.DataSource = dt;
                    //
                    GridView1.DataSource = SqlDataSource2;
                    GridView1.DataBind();
                }
                catch (Exception ex) { Label6.Text = ex.Message; }
             //   finally { db.cn.Close(); }
            }
            else
            {
                Label6.Text = "الرجاء ادخال رقم الطالب ";
            }
        }
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (r3.Checked)
        {
            try
            {
               /*
                string sql = "select * from student ";
                db.cn.Open();

                if (txtFname.Text != "")
                {

                    sql += " where std_fname like '%" + txtFname.Text + "%'";
                    if (txtLname.Text != "")
                    {
                        sql += " and std_lname like '%" + txtLname.Text + "%'";
                        if (txtFather.Text != "")
                        {
                            sql += " and std_fatherlike '%" + txtFather.Text + "%'";
                            if (txtMother.Text != "")
                            {
                                sql += " and std_mother like '%" + txtMother.Text + "%'";
                            }
                        }
                        else
                        {
                            if (txtMother.Text != "")
                            {
                                sql += " and std_mother like '%" + txtMother.Text + "%'";
                            }
                        }
                    }
                    else
                    {
                        if (txtFather.Text != "")
                        {
                            sql += " and std_father like '%" + txtFather.Text + "%'";
                            if (txtMother.Text != "")
                            {
                                sql += " and std_mother like '%" + txtMother.Text + "%'";
                            }
                        }
                        else
                        {
                            if (txtMother.Text != "")
                            {
                                sql += " and std_mother like '%" + txtMother.Text + "%'";
                            }
                        }
                    }
                }
                else
                {
                    if (txtLname.Text != "")
                    {
                        sql += " where std_lname like '%" + txtLname.Text + "%'";
                        if (txtFather.Text != "")
                        {
                            sql += " and std_father like '%" + txtFather.Text + "%'";
                            if (txtMother.Text != "")
                            {
                                sql += " and std_mother  like '%" + txtMother.Text + "%'";
                            }
                        }
                        else
                        {
                            if (txtMother.Text != "")
                            {
                                sql += "and std_mother like '%" + txtMother.Text + "%'";
                            }
                        }
                    }
                    else
                    {
                        if (txtFather.Text != "")
                        {
                            sql += " where std_father like '%" + txtFather.Text + "'";
                            if (txtMother.Text != "")
                            {
                                sql += " and std_mother  like '%" + txtMother.Text + "%'";
                            }
                        }
                        else
                        {
                            if (txtMother.Text != "")
                            {
                                sql += " where std_mother like '%" + txtMother.Text + "%'";
                            }
                        }
                    }
                }

                dt = db.select(sql);
                if (dt.Rows.Count != 0)
                {
                    GridView1.DataSource = dt;
                  //
                GridView1.DataSource = SqlDataSource3;
                    GridView1.DataBind();
                /*}
                else {
                    Label6.Text = "لا يوجد طلاب مطابقة للبحث ...";
                }
            }
            catch (Exception ex) { Label6.Text = ex.Message; }
          //  finally { db.cn.Close(); }

        }
    
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "")
        {

            StdDataSource.SelectCommand = "SELECT * FROM [Student] WHERE ([std_id] = "+ txtID.Text +")";
            GridView1.DataBind();
        }
        else {
            Label6.Text = "الرجاء ادخال رقم الطالب";
        }
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {

        StdDataSource.SelectCommand = "SELECT * FROM [Student] WHERE (([std_lname] LIKE '%' + @std_lname + '%') AND ([std_fname] LIKE '%' + @std_fname + '%') AND ([std_father] LIKE '%' + @std_father + '%') AND ([std_mother] LIKE '%' + @std_mother + '%'))";
        GridView1.DataBind();
    }
}