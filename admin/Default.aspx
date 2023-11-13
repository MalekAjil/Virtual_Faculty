<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:500px;
        }
        .auto-style3 {
            width: 70%;
        }
        .auto-style4 {
            width: 21px;
        }
    </style>
    </asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td align="center">
                <table align="center" class="auto-style3" dir="rtl">
                    <tr>
                        <td>
                            <a href="new_stds.aspx"  title="طلبات التسجيل الجديدة">
                                <img src="../Images/Button/‫btn2.jpg" alt="الطلاب الجدد"
                                 id="img1" name="img1" border="0" onmouseover="this.src='../Images/Button/‫btn2_1.jpg'" 
                                onmouseout="this.src='../Images/Button/‫btn2.jpg'" 
                                onmousedown="this.src='../Images/Button/‫btn2_2.jpg'"
                                 onmouseup="this.src='../Images/Button/‫btn2_1.jpg'"/></a>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <a href="Courses_data.aspx">
                                <img src="../Images/Button/‫btn4.jpg" alt="بيانات المواد"
                                 id="img4" name="img4" border="0" onmouseover="this.src='../Images/Button/‫btn4_1.jpg'" 
                                onmouseout="this.src='../Images/Button/‫btn4.jpg'" 
                                onmousedown="this.src='../Images/Button/‫btn4_2.jpg'"
                                 onmouseup="this.src='../Images/Button/‫btn4_1.jpg'" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="students_data.aspx">
                                <img src="../Images/Button/‫btn1.jpg" alt="بيانات الطلاب "
                                 id="img1" name="img1" border="0" onmouseover="this.src='../Images/Button/‫btn1_1.jpg'" 
                                onmouseout="this.src='../Images/Button/‫btn1.jpg'" 
                                onmousedown="this.src='../Images/Button/‫btn1_2.jpg'"
                                 onmouseup="this.src='../Images/Button/‫btn1_1.jpg'" /></a>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <a href="Lecturs_data.aspx">
                                <img src="../Images/Button/‫btn5.jpg" alt="بيانات المحاضرات"
                                 id="img5" name="img5" border="0" onmouseover="this.src='../Images/Button/‫btn5_1.jpg'" 
                                onmouseout="this.src='../Images/Button/‫btn5.jpg'" 
                                onmousedown="this.src='../Images/Button/‫btn5_2.jpg'"
                                 onmouseup="this.src='../Images/Button/‫btn5_1.jpg'" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="teachers_data.aspx">
                                <img src="../Images/Button/‫btn3.jpg" alt="بيانات الاساتذة"
                                 id="img3" name="img3" border="0" onmouseover="this.src='../Images/Button/‫btn3_1.jpg'" 
                                onmouseout="this.src='../Images/Button/‫btn3.jpg'" 
                                onmousedown="this.src='../Images/Button/‫btn3_2.jpg'"
                                 onmouseup="this.src='../Images/Button/‫btn3_1.jpg'"/></a>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <a href="News_data.aspx">
                                <img src="../Images/Button/‫btn6.jpg" alt="بيانات صفحة الأخبار"
                                 id="img6" name="img6" border="0"
                                 onmouseover="this.src='../Images/Button/‫btn6_1.jpg'" 
                                 onmouseout="this.src='../Images/Button/‫btn6.jpg'" 
                                 onmousedown="this.src='../Images/Button/‫btn6_2.jpg'"
                                 onmouseup="this.src='../Images/Button/‫btn6_1.jpg'" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="Marks_report.aspx">
                                <img src="../Images/Button/‫btn7.jpg"alt="كشف علامات"
                                 id="img7" name="img7" border="0"
                                     onmouseover="this.src='../Images/Button/‫btn7_1.jpg'" 
                                     onmouseout="this.src='../Images/Button/‫btn7.jpg'" 
                                     onmousedown="this.src='../Images/Button/‫btn7_2.jpg'"
                                     onmouseup="this.src='../Images/Button/‫btn7_1.jpg'" /></a>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <a href="Edit_Marks.aspx">
                                <img src="../Images/Button/‫btn8.jpg" alt="إضافة علامات"
                                 id="img8" name="img8" border="0"
                                     onmouseover="this.src='../Images/Button/‫btn8_1.jpg'" 
                                     onmouseout="this.src='../Images/Button/‫btn8.jpg'" 
                                     onmousedown="this.src='../Images/Button/‫btn8_2.jpg'"
                                     onmouseup="this.src='../Images/Button/‫btn8_1.jpg'" /></a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>

