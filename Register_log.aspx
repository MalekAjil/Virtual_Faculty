<%@ Page Title="تسجيل حساب دخول" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="Register_log.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            border: 4px outset #E92F07;
            text-align:center;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="height:400px; width:100%; text-align:center; vertical-align:top;">
        <tr><td>
            <asp:Label ID="Label1" runat="server" Text="تهانينا  عزيزي الطالب .. لقد تم ملئ بياناتك بنجاح" ForeColor="Lime" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="إن رقمك الجامعي هو "></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="الآن مطلوب منك تسجيل اسم مستخدم وكلمة مرور حتى تستطيع الدخول للموقع والتفاعل بالكلية .." Font-Bold="True" ForeColor="#CC0000"></asp:Label>
           
                <br />
            <br />
            <br />
           
                <table align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td class="auto-style3">اسم المستخدم</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                            <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">كلمة المرور</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                            <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Italic="False" ForeColor="Red" OnClick="Button1_Click" Text="تسجيل" Width="102px" />
                        </td>
                    </tr>
                </table>
            <br />
            </td>
        </tr>

    </table>
</asp:Content>

