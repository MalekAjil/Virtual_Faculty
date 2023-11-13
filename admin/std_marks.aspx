<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_marks.aspx.cs" Inherits="admin_std_marks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 200px;
        }
    p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	text-align:right;
	line-height:107%;
	direction:rtl;
	unicode-bidi:embed;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table align="center" class="auto-style1" dir="rtl">
                <tr>
                             <td>الجمهورية العربية السورية<br /> وزارة التعليم العالي<asp:HiddenField ID="yearHiddenF" runat="server"  />
                                 <br /> الجامعة الافتراضية<br /> كلية تقانة المعلومات الافتراضية</td>
                         </tr>
                         <tr>
                             <td align="center">
                                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" Text="كــــشــــف علامـــــات" style="text-align: center"></asp:Label>
                                 <br />
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <%
                                     int numYears=1;
                                     database db = new database();
                                     
                                     if (Request["std_num"] != null && Request["std_num"] != "")
                                     {
                                         try
                                         {
                                             db.cn.Open();
                                             System.Data.DataTable dt = db.select("select * from student where std_id=" + Request["std_num"]);
                                             if (dt.Rows.Count != 0)
                                             {
                                                 System.Data.DataRow dr = dt.Rows[0];
                                                 numYears = Convert.ToInt32(dr["std_year"]);
                                                 yearHiddenF.Value = dr["std_year"].ToString();
                                                 string year="الاولى";
                                                 switch(numYears)
                                                 {
                                                     case 1: year = "الاولى"; break;
                                                     case 2: year = "الثانية"; break;
                                                     case 3: year = "الثالثة"; break;
                                                     case 4: year = "الرابعة"; break;
                                                     case 5: year = "الخامسة"; break;                                                 
                                                 }
                                                 
                                                 Response.Write("ندرج فيما يلي كشفاً بالمقررات التي درسها الطالب <b>"+dr["std_fname"]+" " +dr["std_lname"]+"</b> بن <b>"+dr["std_father"]+"</b> و <b>"+dr["std_mother"]+
                                                     "</b> المولود في <b>"+dr["std_birth_place"]+"</b>  عام <b>"+dr["std_birth_date"]+"</b><br /> والمتمتع بالجنسية <b>الـ"+dr["std_country"]+"</b> خلال السنوات التي قضاها في <b> كلية تقانة المعلومات الافتراضية</b> بالجامعة <b>الافتراضية</b><br /> والعلامات التي نالها في كل مقرر من عام <b>"+dr["std_reg_date"]+"</b>  وحتى الدورة الفصلية <b>"+(DateTime.Now.Month<10&&DateTime.Now.Month>5?" الاولى ":" الثانية ") +"</b> للسنة الدراسية <b>"+year+"</b>");
                                             }
                                             else
                                             {
                                                 Response.Write("لا يوجد معلومات لاظهارها");
                                             }
                                         }
                                         catch (Exception ex) { Response.Write(ex.Message); }
                                         finally { db.cn.Close(); }
                                     }
                                         
                                      %>
                                
                                     </td>
                             </tr>
                         <tr>
                             <td>
                                 <table  style=" border: 4px solid #000;  width:100%; vertical-align:top;" cellspacing="0" cellpadding="0">
                                      
                                     <%
                                                                          
                                         try
                                         {
                                             db.cn.Open();
                                             for(int i=1;i<=Convert.ToInt32(yearHiddenF.Value);i++)
                                             {
                                                 string year="الاولى";
                                                 switch(i)
                                                 {
                                                     case 1: year = "الاولى"; break;
                                                     case 2: year = "الثانية"; break;
                                                     case 3: year = "الثالثة"; break;
                                                     case 4: year = "الرابعة"; break;
                                                     case 5: year = "الخامسة"; break;                                                 
                                                 }
                                                 System.Data.DataTable dlt = db.select("select AVG(std_mark) from Std_Crs where std_id="+Request["std_num"]+" and c_id in(select c_id from Course where c_year="+i+")");
                                                 if (dlt.Rows.Count != 0)
                                                 {
                                                     System.Data.DataRow dr = dlt.Rows[0];

                                                     Response.Write("<tr  style='background-color:#808080;border: 4px solid #000; '><td colspan='6'> السنة الدراسية <b>" + year + "</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    المعدل : <b>" +dr[0]+ "</b></td></tr>");
                                                 }
                                                 Response.Write("<tr style='background-color:#aaaaaa'><td class='auto-style3'> مقررات الفصل الأول </td>"+
                                                                "<td class='auto-style3'>العلامة رقماً</td>" +
                                                                "<td class='auto-style3'>العلامة كتابة </td>"+
                                                                "<td class='auto-style3'> مقررات الفصل الثاني </td>"+
                                                                "<td class='auto-style3'>العلامة رقماً</td>"+
                                                                "<td class='auto-style3'>العلامة كتابة</td></tr><tr>"+
                                                                "<td colspan='3'><table style='width:100%; vertical-align:top;'>");
                                                 System.Data.DataTable dt = db.select("select * from course where c_year=" + i + " and c_season=1");
                                                 if (dt.Rows.Count != 0)
                                                 {
                                                    
                                                     foreach (System.Data.DataRow dr in dt.Rows)
                                                     {
                                                         Response.Write("<tr><td class='auto-style3'><b>" + dr["c_name"] + "</b></td><td class='auto-style3'><b>");
                                                         System.Data.DataTable dtt = db.select("select std_mark from std_crs where c_id=" + dr["c_id"] + " and std_id=" + Request["std_num"]);
                                                         if (dtt.Rows.Count != 0)
                                                         {
                                                             System.Data.DataRow drr = dtt.Rows[0];
                                                             Response.Write(drr["std_mark"]);
                                                         }

                                                         else
                                                         {
                                                             Response.Write("0");
                                                         }
                                                         Response.Write("</b></td><td class='auto-style3'><input id='Text1' type='text' style='width:100%'/></td></tr>");
                                                     }
                                                     Response.Write("</table></td>");
                                                 }
                                                 Response.Write("<td colspan='3'><table style='width:100%; vertical-align:top;'>");
                                                 
                                                     System.Data.DataTable dttt = db.select("select * from course where c_year=" + i + " and c_season=2");
                                             if (dt.Rows.Count != 0)
                                             {
                                                 
                                                 foreach (System.Data.DataRow dr in dttt.Rows)
                                                 {
                                                     Response.Write("<tr><td class='auto-style3'><b>" + dr["c_name"] + "</b></td><td class='auto-style3'><b>");
                                                     System.Data.DataTable dtt = db.select("select std_mark from std_crs where c_id=" + dr["c_id"] + " and std_id=" + Request["std_num"]);
                                                     if (dtt.Rows.Count != 0)
                                                     {
                                                         System.Data.DataRow drr = dtt.Rows[0];
                                                         Response.Write(drr["std_mark"]);
                                                     }
                                                         
                                                     else
                                                     {
                                                         Response.Write("0");
                                                     }
                                                     Response.Write("</b></td><td class='auto-style3'><input id='Text1' type='text' style='width:100%'/></td></tr>");
                                                 }
                                                 Response.Write("</table></td></tr>");

                                             }
                                             else
                                             {
                                                 Response.Write("لا يوجد مواد");
                                             }
                                         }
                                         }
                                         
                                         catch (Exception ex) { Response.Write(ex.Message); }
                                         finally { db.cn.Close(); }
                                                                       
                                          %>
                                 </table>
                             </td>
                         </tr>
              
         <tr>
             <td align="center" >
	             أخذت هذه المعلومات من نظام الأتمتة بتاريخ <%Response.Write(DateTime.Now); %></td>
            
         </tr>
              
         <tr>
             <td align="center" >
	        <input type=button value='طباعة' style="font-size: large; font-weight: bold; color: #FFFFFF; background-color: #3366FF; font-family: Andalus; height: 54px; width: 136px;" onclick='this.disabled = disabled; window.print();'></td>
            
         </tr>
            </table>
            
    </div>
    </form>
</body>
</html>
