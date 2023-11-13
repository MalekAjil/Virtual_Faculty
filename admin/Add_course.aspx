<%@ Page Title="إضافة مادة" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Add_course.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:500px;
        }
        .auto-style3 {
            width: 60%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td>
                <table align="center" class="auto-style3" dir="rtl">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="اسم المادة"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCname" runat="server" Height="16px" Width="200px"></asp:TextBox>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="المدرس"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTeacher" runat="server" DataSourceID="teacherDataSource" DataTextField="t_name" DataValueField="t_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="teacherDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT t_id, t_fname + ' ' + t_lname AS t_name FROM Teacher
order by t_fname "></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="السنة الدراسية"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlYear" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="1">الأولى</asp:ListItem>
                                <asp:ListItem Value="2">الثانية</asp:ListItem>
                                <asp:ListItem Value="3">الثالثة</asp:ListItem>
                                <asp:ListItem Value="4">الرابعة</asp:ListItem>
                                <asp:ListItem Value="5">الخامسة</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="الفصل"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSeason" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="1">الأول</asp:ListItem>
                                <asp:ListItem Value="2">الثاني</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="القسم"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="deptDataSource" DataTextField="d_name" DataValueField="d_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="deptDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [d_id], [d_name] FROM [Department]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="السعر"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCprice" runat="server" Height="16px" Width="200px"></asp:TextBox>
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ملاحظات أو تفاصيل</td>
                        <td colspan="3">
                            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="إصافة" Width="227px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

