<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher_master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Teacher_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:600px;
        }
    
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" dir="rtl">
        <tr>
            
            
            <td>
                المحاضرات التي يجب عليك تدريسها اليوم : <br />
                <%
                      database db = new database();
                       try
                       {
                                 int season = (DateTime.Now.Month < 10 && DateTime.Now.Month >= 5 ? 2 : 1);

                                 db.cn.Open();
                                 //System.Data.DataRow dr;
                                 System.Data.DataTable dt = db.select(string.Format("select * from course where t_id={0} and c_season = {1} ", Convert.ToInt32(Session["t_num"]), season));
                                 if (dt.Rows.Count != 0)
                                 {
                                    // dr = dt.Rows[0];
                                    // Response.Write("<ul>");
                                     foreach (System.Data.DataRow dtr in dt.Rows)
                                     {
                                        // Response.Write("<li> مادة : " + dtr["c_name"]);

                                         Response.Write("<ul style='list-style-type:square;'>");
                                         System.Data.DataTable dtt = db.select("select * from lecture where c_id =" + dtr["c_id"]+" and l_date = '"+ DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Year + "'");

                                         if (dtt.Rows.Count != 0)
                                         {
                                             
                                             foreach (System.Data.DataRow drr in dtt.Rows)
                                             {
                                                 if (DateTime.Parse(drr["l_time"].ToString()).Hour == DateTime.Now.Hour)
                                                 {
                                                     Response.Write("<li> الآن المحاضرة <b><a href='webcamsender.aspx?l_id=" + drr["l_id"] + "'  style='color:orangered;'>" + drr["l_name"] + "</a></b> من مادة <b>" + dtr["c_name"] + "</b>");
                                                 }
                                                 else
                                                 {
                                                     Response.Write("<li>من مادة <b>" + dtr["c_name"] + "</b> المحاضرة <b>" + drr["l_name"] + "</a></b> عند الساعة : <b style='color:blue;'>" + drr["l_time"] + "</b>");
                                                 }
                                                 
                                             }
                                         }
                                       /*
                                         else
                                         {
                                             Response.Write("<li>لا يوجد محاضرات لهذه المادة حاليأ ");
                                         }
                                        */
                                         Response.Write("</ul>");
                                     }
                                     //Response.Write("</ul>");
                                 }
                                 else
                                 {
                                     Response.Write("عذراً لا يوجد محاضرات لهذا اليوم ...!");
                                   }
                             }

                             catch (Exception ex)
                             {
                                Response.Write( ex.Message);
                             }
                             finally { db.cn.Close(); }
                   
                     %>
            </td>
        </tr>
    </table>
</asp:Content>



