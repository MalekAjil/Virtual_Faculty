using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["c_id"] = Request["c_id"];
//        Response.Write("<script type='text/javascript'>alert('افضل متصفح لتصفح هذه الصفحة هو فيرفوكس FireFox');    </script>");
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string filePath = "c:\\test.text";
        FileInfo fi = new FileInfo(filePath);
        if (fi.Exists)
        {
            Response.ClearContent();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + fi.Name);
            Response.AddHeader("Content-Length", fi.Length.ToString());
            Response.ContentType = "text/plain";
            Response.TransmitFile(fi.FullName);
            Response.End();
            Response.Write("succeeded");
        }
        else
        {
            Response.Write("failed to download the file");
        }
    }
}