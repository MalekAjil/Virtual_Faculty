<%@ Page Language="C#" MasterPageFile="~/Student/Student_master.master" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="height:400px;vertical-align:top; width:100%" cellspacing="0" cellpadding="0" >
       <tr>
            <td width="200" style="vertical-align:top;" >
                <table style="width: 92%;font-family:ae_AlArabiya;border-collapse: collapse; "  dir="rtl" align="center" >
     
        <tr>
            <td>
  
                  <%
                    database db = new database();
                    try
                    {
                        db.cn.Open();
                       
                        System.Data.DataTable dt = db.select("select c_id,c_name,t_id,c_notes from course where c_id ="+Session["c_id"]);
                        if (dt.Rows.Count != 0)
                        {
                            System.Data.DataRow dr = dt.Rows[0];
                            Response.Write("<tr><td colspan='2' class='style5' style='width: 166px'><strong>"+dr["c_name"]+"</strong></td></tr>	");
                            Response.Write("<ol>");
                            System.Data.DataTable dttt = db.select("select * from lecture where c_id =" + dr["c_id"]);
                            if (dttt.Rows.Count != 0)
                            {

                                foreach (System.Data.DataRow drrr in dttt.Rows)
                                {
                                    if (drrr["l_file"].ToString() != "")
                                    
                                        Response.Write("<tr><td class='style3' style='width: 24px'>" +
                                        "<a target='contents' href='../" + drrr["l_file"] + "' onclick='txtUrl.value=this.href' >" + 
                                        "<img alt='' src='../Images/GIF/CD_selver.gif' width='23' height='23' border='0' /></a></td>" );
                                    
                                    else
                                         Response.Write("<tr><td class='style3' style='width: 24px'>" +                                      
                                        "<img alt='' src='../Images/GIF/CD_selver.gif' width='23' height='23' border='0' /></a></td>" );                                                                       
                                    
                                    if(drrr["L_pdf"].ToString() != "")
                                        Response.Write("<td class='style3'><strong>" +
                                        "<a target='contents' href='../" + drrr["l_pdf"] + "' onclick='txtUrl.value=this.href'>" + drrr["l_name"] + "</a></strong></td></tr>");
                                    
                                    else
                                        Response.Write("<td class='style3'><strong style='color:white;'>" + drrr["l_name"] + "</strong></td></tr>");
                                    
                                    /*
                                     *  Response.Write("<tr><td class='style3' style='width: 24px'>"+
                                    "<a target='contents' href='lecture.aspx?l_id="+drrr["l_id"]+"'>"+
                                    "<img alt='' src='images/film.gif' width='23' height='23' class='style7' /></a></td>"+
                                    "<td class='style3'><strong>"+
                                    "<a target='contents' href='lecture.aspx?l_id="+drrr["l_id"]+"'>"+drrr["l_name"]+"</a></strong></td></tr>");
                                    */
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
                            Response.Write("عذراً أنت لم تسجل مواداً بعد عليك تسجيل مواد جديدة من صفحة  <a href='../register_sub.aspx'> تسجيل مواد </a>");

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
               </td>
       
           <td style="vertical-align:top;">
              رابط التحميل : <input id="txtUrl" name="txtUrl" type="text" style="width:50%;" value=""  />
               <br />
<iframe name="contents" target="main" id="I1" src="CourseContents.aspx" style="width:100%;height:400px;" scrolling="auto" >
لا يدعم المستعرض الذي تستخدمه الإطارات المضمنة أو تمت تهيئته حالياً حتى لا يدعم الإطارات المضمنة.
</iframe>
             
           </td>
          </tr>
   </table>
  
</asp:Content>

