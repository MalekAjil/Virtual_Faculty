<%@ Page Title="تسجيل الدخول" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="sign_in.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/log_in_wuc.ascx" TagPrefix="uc1" TagName="log_in_wuc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <table class="auto-style111" dir="rtl">
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
                <table style="width:auto; font-family:ae_Japan" align="center">
                    <tr>
                        <td>
                            <uc1:log_in_wuc runat="server" id="log_in_wuc" />
                        </td>
                    </tr>
                </table>
              &nbsp;<br />
                ان كنت تملك حساباً وتريد تغييره
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#660066" NavigateUrl="~/change_log.aspx">اضغط هنا</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

