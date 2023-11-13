<%@ Page Title="" Language="C#" MasterPageFile="../webMaster.master" AutoEventWireup="true" CodeFile="change_log.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 400px;
            font-family:ae_AlBattar;
        }
        .auto-style2 {
            width: 50%;
            border-collapse: collapse;
            border: 4px solid #800000;
        }
        .auto-style3 {
            height: 105px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" class="auto-style1" dir="rtl">
        <tr>
            <td>
               
                
               
 <table align="center" class="auto-style2" dir="rtl">
                    <tr>
                        <td>اسم المستخدم القديم : </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="يجب إدخال اسم المستخدم القديم" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>كلمة السر القديمة : </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="29px" TextMode="Password" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="يجب إدخال كلمة السر القديمة" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>اسم المستخدم الجديد : </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="يجب إدخال اسم المستخدم الجديد" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>كلمة السر الجديدة : </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="29px" TextMode="Password" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="يجب إدخال كلمة السر الجديدة" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>تأكيد كلمة السر : </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="29px" TextMode="Password" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="يجب تأكيد كلمة السر" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="كلمة السر  الجديدة وتأكيدها التي ادخلتهما غير متطابقتين" ForeColor="Red">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" />
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" BackColor="#3366FF" Font-Bold="True" ForeColor="#FFFF99" Height="30px" OnClick="Button1_Click" Text="تغيير" Width="200px" align="right"/>
&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="#3366FF" Font-Bold="True" ForeColor="#FFFF99" Height="30px" OnClick="Button2_Click" Text="إعادة تعيين" Width="200px" align="left" />
                        </td>
                    </tr>
                </table>
               
                
               
            </td>
        </tr>
    </table>
</asp:Content>

