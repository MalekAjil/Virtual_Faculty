<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher_master.master" AutoEventWireup="true" CodeFile="Add_Files.aspx.cs" Inherits="Teacher_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 600px;
            border-collapse: collapse;
            border: 4px solid #37508E;
        }
       
        .auto-style6 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <br />
                <br />

                <table align="center" class="auto-style4" dir="rtl">
                    <tr>
                        <td class="auto-style6">المادة : </td>
                        <td class="auto-style6">&nbsp;
                            <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="courseDataSource" DataTextField="c_name" DataValueField="c_id" AutoPostBack="True"   >
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style6">المحاضرة : </td>
                        <td class="auto-style6">&nbsp;
                            <asp:DropDownList ID="ddlLecture" runat="server" DataSourceID="LecSqlDataSource1" DataTextField="l_name" DataValueField="l_id" AutoPostBack="True" >
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr><td colspan="4">
                    <asp:Panel ID="Panel1" runat="server" Enabled="False">
                    <table style="vertical-align:text-top">
                        <tr>
                        <td class="auto-style6">ملف الفيديو : </td>
                        <td class="auto-style6">
                            <asp:FileUpload ID="FileUpload1" runat="server"  Enabled="False" Height="60px" Width="180px" />
                        </td>
                        <td class="auto-style6">ملف الكتاب PDF : </td>
                        <td class="auto-style6">
                            <asp:FileUpload ID="FileUpload2" runat="server"  Enabled="False" Height="60px" Width="180px"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server"  Visible="False" ImageUrl="~/Images/GIF/word104.gif" Height="30px" Width="143px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="Button2" runat="server" BackColor="#3366FF" Font-Bold="True" Font-Names="ae_Sindibad" Font-Size="Medium" ForeColor="#FFFFCC" OnClick="Button2_Click" Text="اضافة" Width="100%" />
                        </td>
                    </tr>
                        
                    </table>
                        </asp:Panel>
                <asp:SqlDataSource ID="LecSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [l_id], [l_name] FROM [Lecture] WHERE ([c_id] = @c_id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlCourse" Name="c_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="courseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [c_id], [c_name] FROM [Course] WHERE  ([t_id] = @t_id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="t_id" SessionField="t_num" />
                                </SelectParameters>
                            </asp:SqlDataSource>            
</td></tr>
                        </table>
                
                <br />
                <br />
                
</asp:Content>

