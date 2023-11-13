using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            database db = new database();
            try
            {
                db.cn.Open();
                string sql = string.Format("insert into notes (not_name,not_email,not_string) values ('{0}','{1}','{2}')", TextBox1.Text, TextBox2.Text, TextBox3.Text);
                int i = db.modify(sql);
                if (i != 0)
                    Label3.Text = "شكراً لكم .. ونأمل أن نكون عند حسن ظنكم بنا ..";
            }
            catch (Exception ex)
            { Label3.Text = ex.Message; }
        

    }
   
}