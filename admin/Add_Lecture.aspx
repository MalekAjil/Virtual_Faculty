﻿<%@ Page Title="إضافة محاضرة" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Add_Lecture.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <LINK rel=stylesheet href="../Date%20-%20Time%20Picker_files/main.css">
    <LINK rel=stylesheet href="../Date%20-%20Time%20Picker_files/rating.css">
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/main.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/prototype-1.6.0.2.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/prototype-base-extensions.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/prototype-date-extensions.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/behaviour.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/ratingbar.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/datepicker.js"></SCRIPT>
    <LINK rel=stylesheet href="../Date%20-%20Time%20Picker_files/datepicker.css">
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/behaviors.js"></SCRIPT>

    <style>
    .auto-style2{
    font-family:ae_Sindibad;
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
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="القسم"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="deptDataSource" DataTextField="d_name" DataValueField="d_id" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="deptDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [d_id], [d_name] FROM [Department]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="السنة الدراسية"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="1">الأولى</asp:ListItem>
                                <asp:ListItem Value="2">الثانية</asp:ListItem>
                                <asp:ListItem Value="3">الثالثة</asp:ListItem>
                                <asp:ListItem Value="4">الرابعة</asp:ListItem>
                                <asp:ListItem Value="5">الخامسة</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                   </table>
        <tr>
            <td>
                 <asp:Panel ID="Panel1" runat="server" Enabled="False">
                <table align="center" class="auto-style3" dir="rtl">
                   
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="اسم المادة"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="courseDataSource" DataTextField="c_name" DataValueField="c_id" Enabled="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="courseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [c_id], [c_name] FROM [Course] WHERE (([c_year] = @c_year) AND ([dept_id] = @dept_id))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlYear" Name="c_year" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlDept" Name="dept_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="اسم المحاضرة"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLecture" runat="server" Height="24px" Width="199px"></asp:TextBox>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="التاريخ"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDate" class="datepicker" style="width:175px;" runat="server" TextMode="Date"></asp:TextBox>  
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="التوقيت"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTime" class="timepicker" style="width:175px;" runat="server" TextMode="Time"></asp:TextBox>  
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="إضافة" Width="227px" Font-Bold="True" Font-Names="ae_Mashq" />
                        </td>
                    </tr>
                    
                </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

