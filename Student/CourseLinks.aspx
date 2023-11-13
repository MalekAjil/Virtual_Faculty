<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseLinks.aspx.cs" Inherits="CourseLinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div dir="rtl" style="height: 458px; background-color: #3C609C; width: 70%;">
<table style="width: 92%;font-family:ae_AlArabiya;" dir="rtl" align="center" >
     
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
                            System.Data.DataRow dr = dt.Rows[0];
                            Response.Write("<tr><td class='style5' style='width: 166px'><strong>"+dr["c_name"]+"</strong></td></tr>	");
                            Response.Write("<ol>");
                            System.Data.DataTable dttt = db.select("select * from lecture where c_id =" + dr["c_id"]);
                            if (dttt.Rows.Count != 0)
                            {

                                foreach (System.Data.DataRow drrr in dttt.Rows)
                                {
                                    Response.Write("<tr><td class='style3' style='width: 24px'>"+
                                    "<a target='contents' href='lecture.aspx?l_id="+drrr["l_id"]+"'>"+
                                    "<img alt='' src='images/film.gif' width='23' height='23' class='style7' /></a></td>"+
                                    "<td class='style3'><strong>"+
                                    "<a target='contents' href='lecture.aspx?l_id="+drrr["l_id"]+"'>"+drrr["l_name"]+"</a></strong></td></tr>");
                                    //Response.Write("<li><a href='lecture.aspx?l_id=" + drrr["l_id"] + "'>" + drrr["l_name"] + "</a>");
                                }
                            }
                            else
                            {
                                Response.Write("<li>لا يوجد محاضرات لهذه المادة حاليأ ");
                            }

                            Response.Write("</ol>");
                            //Response.Write("");
                        }

                        else
                        {
                            Response.Write("عذراً أنت لم تسجل مواداً بعد عليك تسجيل مواد جديدة من صفحة  <a href='register_sub.aspx'> تسجيل مواد </a>");

                        }
                    }

                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally { db.cn.Close(); }
        
                             
                     %>
              </td>
            
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
