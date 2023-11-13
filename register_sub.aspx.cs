using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    public database db = new database();
    public int season, c_count = 0, k = 0;
    
    public System.Data.DataRow dr;
    public System.Data.DataTable dt;
    int c_price = 0;
    string acc_type ;

    //public CheckBox[] c;

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["user_name"] == null || Session["user_name"].ToString() == "") && (Session["std_num"] == null || Session["std_num"].ToString() == ""))
        {
            Response.Redirect("sign_in.aspx?src=register_sub");
            Session["src"] = "register_sub";
        }
        else
        {
            season = (DateTime.Now.Month < 10 && DateTime.Now.Month >= 5 ? 2 : 1);

            try
            {
                db.cn.Open();

                dt = db.select(string.Format("select * from student where std_id={0} ", Session["std_num"].ToString()));
                dr = dt.Rows[0];
                // year = Convert.ToInt32( dr["std_year"]);
                //dept = Convert.ToInt32( dr["std_d_id"]);
                SeasonHiddenF.Value = season.ToString();
                YearHiddenF.Value = dr["std_year"].ToString();
                DeptHiddenF.Value = dr["std_d_id"].ToString();
                
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { db.cn.Close(); }
            if (RadioButton1.Checked)
            {
                acc_type = "card";
                ddlCard.Enabled = true;
                txtAccName1.Enabled = true;
                txtAccNum1.Enabled = true;
                txtBankName.Enabled = false;
                txtAccName2.Enabled = false;
                txtAccNum2.Enabled = false;
            }
            else if (RadioButton2.Checked)
            {
                acc_type = "bank";
                ddlCard.Enabled = false;
                txtAccName1.Enabled = false;
                txtAccNum1.Enabled = false;
                txtBankName.Enabled = true;
                txtAccName2.Enabled = true;
                txtAccNum2.Enabled = true;
            }
            else
            {
                acc_type = "";
                ddlCard.Enabled = false;
                txtAccName1.Enabled = false;
                txtAccNum1.Enabled = false;
                txtBankName.Enabled = false;
                txtAccName2.Enabled = false;
                txtAccNum2.Enabled = false;
            }

        }           

    }
    protected void btnResum_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            Panel2.Enabled = true;
            Panel2.Visible = true;
            Panel3.Visible = false;

        }
        else
        {
            lblError.Text = "يجب عليك الموافقة على الشروط ..؟";
        }

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        try
        {
            db.cn.Open();
            foreach (ListItem ch in CheckBoxList1.Items)
            {
                k++;
                if (ch.Selected)
                {
                    System.Data.DataTable dt = db.select("select c_price from course where c_id = " + ch.Value);
                    if (dt.Rows.Count != 0)
                    {
                        System.Data.DataRow dr = dt.Rows[0];
                        c_price += Convert.ToInt32(dr["c_price"]);
                        
                    }
                    c_count++;
                }
            }
            if (checkCount())
            {

                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Label6.Text += c_price + " ليرة سورية ";
                c_priceHiddenF.Value = c_price.ToString();
            }
        }
        catch (Exception ex) { Label3.Text = ex.Message; }
        finally { db.cn.Close(); }


    }
    protected void btnComplet_Click(object sender, EventArgs e)
    {
        if (check8())
        {
            try
            {
                string sql="";
                db.cn.Open();
                if (RadioButton1.Checked)
                    sql = "select * from bank where acc_type = '" + acc_type + "' and bank_name = '" + ddlCard.SelectedItem.Value + "' and acc_name ='" + txtAccName1.Text + "' and acc_pass='" + txtAccNum1.Text+"'";
                else if (RadioButton2.Checked)
                     sql = "select * from bank where acc_type = '" + acc_type + "' and bank_name = '" + txtBankName.Text + "' and acc_name ='" + txtAccName2.Text + "' and acc_pass='" + txtAccNum2.Text+"'";

                System.Data.DataTable dt = db.select(sql);
                if (dt.Rows.Count != 0)
                {
                    System.Data.DataRow dr = dt.Rows[0];
                    if (c_price < Convert.ToInt32(dr["acc_value"]))
                    {
                        int j = 0;
                        foreach (ListItem ch in CheckBoxList1.Items)
                            if (ch.Selected)
                            {
                                j = db.modify(string.Format("insert into std_crs (std_id,c_id,std_registered) values ({0},{1},'true')", Session["std_num"].ToString(), ch.Value));

                            }
                        if (j != 0)
                        {
                            int k = db.modify(string.Format("update bank set acc_value-={0} where acc_type='{1}' and acc_name='{2}'", c_priceHiddenF.Value, acc_type, dr["acc_name"].ToString()));
                            if (k != 0)
                            {
                                int v = db.modify(string.Format("update bank set acc_value+={0} where acc_type='bank' and acc_name='vif'", c_priceHiddenF.Value));
                                if (v != 0)
                                    Response.Redirect("student/");
                                else
                                    db.modify("rollback");
                            }

                        }
                    }
                    else
                    {
                        lblError.Text = "ليس لديك رصيد كافٍ..! الرجاء التحقق من رصيدك ";
                    }
                }
                else
                    lblError.Text = "هذا الحساب غير موجود .... الرجاء التاكد من نوع واسم ورقم الحساب ";
            }
            catch (Exception ex) { lblError.Text = ex.Message; }
            finally { db.cn.Close(); }
        }
        
    }
   
    
    bool check8()
    {
        if (RadioButton1.Checked)
        {
            if (ddlCard.SelectedIndex == 0)
            {
                lblError.Text = " الرجاء اختيار نوع البطاقة ";
                return false;            
            }
            if (txtAccName1.Text == "")
            {
                lblError.Text = "ادخل اسم الحساب ";
                return false;
            }
            else if (txtAccNum1.Text == "")
            {
                lblError.Text = "ادخل رقم الحساب";
                return false;
            }
            else return true;
        }
        else if (RadioButton2.Checked)
        {
            if (txtBankName.Text == "")
            {
                lblError.Text = "ادخل اسم البنك ";
                return false;
            }
            if (txtAccName2.Text == "")
            {
                lblError.Text = "ادخل اسم الحساب ";
                return false;
            }
            else if (txtAccNum2.Text == "")
            {
                lblError.Text = "ادخل رقم الحساب";
                return false;
            }
            else return true;
        }
        else
        {
            lblError.Text = "اختر نوع الحساب";
            return false;
        }
    }
    bool checkCount()
    {
        if (c_count < 3 && k >= 3)
        {
            lblError.Text = "لا يمكنك ان تسجل أقل من ثلاث مواد";
            return false;
        }
        if (c_count > 7)
        {
            lblError.Text = "لا يمكنك ان تسجل أكثر من سبع مواد";
            return false;
        }
        lblError.Text = "";
        return true;
    }

}


/*in page cod for manually add checkbox
<%
                    try
                    {
                        db.cn.Open();

                        dt = db.select(string.Format("select * from course where c_id not in(select c_id from std_crs where std_id={0} and std_mark>60 ) and c_season={1} and c_year ={2} and dept_id={3} ", Session["std_num"].ToString(), season, HiddenField2.Value, HiddenField3.Value));
                        if (dt.Rows.Count != 0)
                        {
                            foreach (System.Data.DataRow dtr in dt.Rows)
                            {
                                c = new CheckBox[dt.Rows.Count];
                                c[k] = new CheckBox();
                                c[k].Text = dtr["c_name"].ToString();
                                c[k].ID = dtr["c_id"].ToString();
                                                                
                                Response.Write(c[k]);
                                //Response.Write("<asp:CheckBox ID='" + dtr["c_id"] + "' runat='server' Font-Bold='true' Text='" + dtr["c_name"] + "' />");
                                Response.Write("<br />");
                                Response.Write("<input id='" + dtr["c_id"] + "' type='checkbox' />" + dtr["c_name"] + "<br />");
                                k++;
                            }
                        }
                    }
                    catch (Exception ex) { Response.Write(ex.Message); }
                    finally { db.cn.Close(); }
                    
                    
    
        
                       %>
*/