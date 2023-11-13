<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 70%;
            height:500px;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td>
                <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/admin/index_admin.aspx">
                </asp:Login>
            </td>
        </tr>
    </table>
</asp:Content>

