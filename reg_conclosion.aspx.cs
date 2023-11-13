using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Session["std_num"]);
        database db = new database();
        try
        {

            db.cn.Open();
            DataRow dr;
            DataTable dt = db.select(string.Format("select * from student where std_id = {0}", Request["std_num"]));
            if (dt.Rows.Count != 0)
            {
                dr = dt.Rows[0];
                Label4.Text = dr["std_fname"].ToString();
                Label5.Text = dr["std_lname"].ToString();
                Label6.Text = dr["std_father"].ToString();
                Label7.Text = dr["std_mother"].ToString();
                Label8.Text = dr["std_birth_date"].ToString();
                Label9.Text = dr["std_birth_place"].ToString();
                if (Convert.ToBoolean(dr["std_gender"]))
                    Label10.Text = "ذكر";
                else
                    Label10.Text = "انثى";
                Label11.Text = dr["std_social_status"].ToString();
                Label12.Text = dr["std_country"].ToString();
                Label13.Text = dr["std_city"].ToString();
                Label14.Text = dr["std_address"].ToString();
                Label15.Text = dr["std_phone"].ToString();

                Label16.Text = dr["std_diploma"].ToString();
                Label17.Text = dr["std_specialization"].ToString();
                Label18.Text = dr["std_email"].ToString();
                Image2.ImageUrl = "~/Student/" + dr["std_picture"];

                dt = db.select(string.Format("select d_name from department where d_id = {0}", dr["std_d_id"].ToString()));
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];
                    Label39.Text = dr["d_name"].ToString();
                }
                dt = db.select(string.Format("select * from std_log where std_id = {0}", Request["std_num"]));
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];
                    Label37.Text = dr["std_log_name"].ToString();
                    Label38.Text = dr["std_log_pass"].ToString();
                }

            }
        }
        catch (Exception ex)
        {
            Label41.Text = ex.Message;
        }
         finally { db.cn.Close();
         Session["std_num"] = "";
        }
        
    }
   
}