<%@ Control Language="C#" AutoEventWireup="true" CodeFile="log_in_wuc.ascx.cs" Inherits="log_in_wuc" %>

  <table align="center"  dir="rtl">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True"  ForeColor="#3366FF" Text="اسم المستخدم : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="الرجاء كتابة اسم المستخدم" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True"  ForeColor="#6666FF" Text="كلمة السر : "></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="الرجاء كتابة كلمة السر" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" />
                        <br />
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" Font-Bold="True" Visible="False">[HyperLink2]</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" BackColor="#6666FF" Font-Bold="True" ForeColor="White" Height="28px" Text="ارسال" Width="92px" OnClick="Button1_Click" />
                       &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#6666FF" Font-Bold="True" ForeColor="White" Height="28px" OnClick="Button2_Click" Text="مسح" Width="92px" />
                    </td>
                </tr>
                </table>
