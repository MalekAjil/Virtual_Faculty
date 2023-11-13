using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class voting_ar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*
     * database db = new database();
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("voting.aspx?c=yes");
            db.cn.Open();
            int i = db.modify("update voting set v_yes=(select v_yes from voting where v_id=1)+1");
            if (i != 0)
            {
                Label1.Text = "شكراً لك لدعمنا .. لقد وصل عدد المصوتين بـ نعم  : ";

                System.Data.DataRow dr;
                System.Data.DataTable dt = db.select("select v_yes from voting where v_id=1");
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];
                    Label1.Text += dr["v_yes"].ToString();
                    Response.Write("<script lang='js'>alert('thank you ... the number of voting yes has reched : " + dr["v_yes"] + "');</script>");
                }
            }
            else
            {
                Response.Write("<script lang='js'>alert('Sorry cannot voting');</script>");
            }
        }
        catch (Exception ex) { Label1.Text = ex.Message; }
        finally { db.cn.Close(); }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("voting.aspx?c=no");
            db.cn.Open();
            int i = db.modify("update voting set v_no=(select v_no from voting where v_id=1)+1");
            if (i != 0)
            {
                Label1.Text = "شكراً لك .. لقد وصل عدد المصوتين بـ لا  : ";

                System.Data.DataRow dr;
                System.Data.DataTable dt = db.select("select v_no from voting");
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];
                    Label1.Text += dr["v_no"].ToString();
                    Response.Write("<script lang='js'>alert('thank you ... the number of voting no has reched : " + dr["v_no"] + "');</script>");
                }
            }
            else
            {
                Response.Write("<script lang='js'>alert('Sorry cannot voting');</script>");
            }
        }
        catch (Exception ex) { Label1.Text = ex.Message; }
        finally { db.cn.Close(); }

    }
     * */
   
}
