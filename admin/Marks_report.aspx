<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Marks_report.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

        <style type="text/css">
            .auto-style1 {
                height: 23px;
            }
            .auto-style2 {
            width: 50%;
            border: 4px solid #808080;
            text-align:center;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Panel ID="Panel1" runat="server">
                            <table align="center" class="auto-style2" dir="rtl">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="رقم الطالب : "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtId" runat="server" TextMode="Number" AutoPostBack="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style1">
                                        <asp:HyperLink ID="HyperLink1" runat="server" Enabled="False"  Target="_blank" ImageUrl="~/Images/Button/ok_1.jpg" >
                                           </asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
           
        </asp:Panel>
</asp:Content>

