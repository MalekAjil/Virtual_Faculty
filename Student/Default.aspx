  
<%@ Page Language="C#" MasterPageFile="~/Student/Student_master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%Title = Session["std_name"].ToString() + "  " + Session["std_lname"].ToString(); %>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:700px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" dir="rtl">       <tr>   <td>
                <%
                       try
        {
                                 int season = (DateTime.Now.Month < 10 && DateTime.Now.Month >= 5 ? 2 : 1);

                                 db.cn.Open();
                                 //System.Data.DataRow dr;
                                 System.Data.DataTable dt = db.select(string.Format("select * from course where c_id in(select c_id from std_crs where std_id = {0} and std_mark < 60) and c_season = {1} ", Convert.ToInt32(Session["std_num"]), season));
                                 if (dt.Rows.Count != 0)
                                 {
                                     Response.Write("<br /><br /><b>محاضرات اليوم : </b> <br />");
                                    // dr = dt.Rows[0];
                                    // Response.Write("<ul>");
                                     foreach (System.Data.DataRow dtr in dt.Rows)
                                     {
                                        // Response.Write("<li> تعرض الآن المحاضرة التالية من مادة " + dtr["c_name"]);
                                      
                                      Response.Write(" <ul style='list-style-type:square;'>");
                                      System.Data.DataTable dtt = db.select("select * from lecture where c_id =" + dtr["c_id"] + " and l_date = '"+ DateTime.Now.Month + "-" + DateTime.Now.Day + "-" + DateTime.Now.Year + "'");

                                         if (dtt.Rows.Count != 0)
                                         {
                                             
                                             foreach (System.Data.DataRow drr in dtt.Rows)
                                             {
                                                 if (DateTime.Parse(drr["l_time"].ToString()).Hour == DateTime.Now.Hour)
                                                 {
                                                     Response.Write("<li> تعرض الآن المحاضرة <b><a href='lecture.aspx?l_id=" + drr["l_id"] + "'  style='color:orangered;' target='_blank'>" + drr["l_name"] + "</a></b> من مادة <b>" + dtr["c_name"] + "</b>");
                                                 }
                                                 else// if (DateTime.Parse(drr["l_time"].ToString()).Hour >= DateTime.Now.Hour)
                                                 {
                                                     Response.Write("<li>من مادة <b>" + dtr["c_name"] + "</b> المحاضرة <b> " + drr["l_name"] + "</a> </b> عند الساعة : <b style='color:blue;'>" + drr["l_time"] + "</b>");
                                                     //Response.Write("<li>من مادة <b>" + dtr["c_name"] + "</b> المحاضرة <b><a href='lecture.aspx?l_id=" + drr["l_id"] + "'  style='color:orangered;'>" + drr["l_name"] + "</a></b> عند الساعة : <b style='color:blue;'>" + drr["l_time"] + "</b>");
                                                 }
                                             }
                                         }
/*
                                         else
                                         {
                                             Response.Write("عذراً لا يوجد محاضرات لهذا اليوم ...!");
                                         }
 * */
                                         Response.Write("</ul>");
                                     }                                   
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

