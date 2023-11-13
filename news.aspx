<%@ Page Title="" Language="C#" MasterPageFile="~/Site_ar.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table align="center" style="height:200px; width:100%;">
        <tr>
            <td align="center">
					    <asp:Image ID="Image3" runat="server" Width="175" Height="225" />
                <br /><br />
  <asp:Label ID="lblMsg" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

