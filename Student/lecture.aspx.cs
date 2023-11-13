using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_lec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["std_num"] != null && Session["std_num"].ToString() != "")
        {
            
        database db = new database();
        try
        {
            db.cn.Open();
            //System.Data.DataRow dr;
            if (Request["l_id"] != null && Request["l_id"] != "")
            {
                System.Data.DataTable dt = db.select(string.Format("select * from std_lec where std_id={0} and l_id = {1} ",Session["std_num"].ToString(), Request["l_id"].ToString()));
                if (dt.Rows.Count == 0)
                {
                    db.modify("insert into std_lec (l_id,std_id) values (" +Request["l_id"] + "," + Session["std_num"] + ")");
                }
            }
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally { db.cn.Close(); }
                   
    
        }
        else
        {Response.Redirect("../sign_in.aspx");
        }}
}