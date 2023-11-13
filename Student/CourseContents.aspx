<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseContents.aspx.cs" Inherits="CourseContents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table align="center" class="auto-style3"  dir="rtl">
        <tr>
            <td colspan="2" align="center">
                <img alt='' src='../Images/Ebook-Logo.jpg' Width='200' Height='200' />
              </td>
        </tr>
        <tr>
            <td>
                  <%
                    database db = new database();
                    try
                    {
                      
                        db.cn.Open();
                        //DataRow dr;
                        System.Data.DataTable dt = db.select("select c_id,c_name,t_id,c_notes from course where c_id ="+Session["c_id"]);
                        if (dt.Rows.Count != 0)
                        {
                            System.Data.DataRow dr=dt.Rows[0];
                            Response.Write("<br /> اسم المادة : <br /> <b>" + dr["c_name"] + "</b><br />");
                            this.Page.Title = "صفحة مادة : " + dr["c_name"];
                                Response.Write("<br />مدرس المادة : <br />");
                                System.Data.DataTable dtt = db.select("select t_fname,t_lname from teacher where t_id =" + dr["t_id"]);
                                if (dtt.Rows.Count != 0)
                                {
                                    System.Data.DataRow drr = dtt.Rows[0];
                                    Response.Write("<b> " + drr["t_fname"] + " " + drr["t_lname"] + "</b><br /> ");
                                }
                                Response.Write("<br /><b> معلومات عن المادة : </b><br /> " + dr["c_notes"]);
                           
                            
                            }
                            
                        else
                        {
                            Response.Write("عذراً أنت لم تسجل مواداً بعد عليك تسجيل مواد جديدة من صفحة  <a href='../register_sub.aspx'> تسجيل مواد </a>");
                            
                        }
                    }

                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally { db.cn.Close(); }
        
                             
                     %>
              
            

                <br />
                <br />
               
            </td>
            
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
