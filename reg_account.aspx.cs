using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["user_name"] != null || Session["user_name"].ToString() != "") && (Session["std_num"] != null || Session["std_num"].ToString() != ""))
        {
          
        }
        else
        { 
            Response.Redirect("sign_in.aspx?src=register_sub");
            Session["src"] = "register_sub";
           
        }       

        if (RadioButton1.Checked)
        {
            ddlCard.Enabled=true;
            txtAccName1.Enabled = true;
            txtAccNum1.Enabled = true;
            txtBankName.Enabled = false;
            txtAccName2.Enabled = false;
            txtAccNum2.Enabled = false;
        }
        else if(RadioButton2.Checked)
        {
            ddlCard.Enabled = false;
            txtAccName1.Enabled = false;
            txtAccNum1.Enabled = false;
            txtBankName.Enabled = true;
            txtAccName2.Enabled = true;
            txtAccNum2.Enabled = true;
        }
        else
        {
            ddlCard.Enabled = false;
            txtAccName1.Enabled = false;
            txtAccNum1.Enabled = false;
            txtBankName.Enabled = false;
            txtAccName2.Enabled = false;
            txtAccNum2.Enabled = false;
        }

           

    }
    database db = new database();
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            db.cn.Open();
           /* foreach 
                {
                    int j = db.modify(string.Format("insert into std_crs (std_id,c_id,std_registered) values ({0},{1},'true')", Session["std_num"].ToString(), ch.Value));
                    if (j != 0)
                        Response.Redirect("student_page.aspx");
                }
            */
        }
        catch (Exception ex) { Label3.Text = ex.Message; }
        finally { db.cn.Close(); }

    }
}