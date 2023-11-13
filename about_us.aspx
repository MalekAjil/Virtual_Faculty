<%@ Page Title="من نحن" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height:500px;
            text-align:center;
            border-left-style: solid;
            border-left-width: 4px;
            border-right: 4px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 4px;
            border-bottom: 4px solid #C0C0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <table align="center" class="auto-style1" dir="rtl">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="نحن من برمج الموقع ..!" Font-Bold="True" Font-Names="ae_Japan" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image2" runat="server" Height="191px" ImageUrl="~/Images/graphics/CoBra (316).png" Width="204px" />
            </td>
        </tr>
    </table>

</asp:Content>

