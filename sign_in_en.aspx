<%@ Page Title="" Language="C#" MasterPageFile="~/Site_en.master" AutoEventWireup="true" CodeFile="sign_in_en.aspx.cs" Inherits="Default2" %>

<%@ Register src="Log_in_WUC_en.ascx" tagname="Log_in_WUC_en" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style111 {
            width: 90%;
            height:800px;
            text-align:center;
            vertical-align:top;
            border-collapse: collapse;
            background-image: url('Images/online.jpg');
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">


    <table class="auto-style111" dir="ltr">
        <tr>
            <td style="vertical-align:top">&nbsp;<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;<br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table style="width:auto;font-family:Algerian" align="center" >
                    <tr>
                        <td>
                           
                            <uc1:Log_in_WUC_en ID="Log_in_WUC_en2" runat="server" />
                           
                        </td>
                    </tr>
                </table>
              &nbsp;if you have an account and you want to change it please&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#660066" NavigateUrl="~/change_log.aspx">click here</asp:HyperLink>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

