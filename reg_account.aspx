<%@ Page Title="" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="reg_account.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<link rel="stylesheet" href="MyStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style1" dir="rtl">
        <tr>
            <td>&nbsp;
                <table align="center" >
		<tr>
		<td >
				<div class="style16" >
					<div class="style16">
<span > <span lang="ar-sa" style="font-family:ae_Hani; color:#ff2a00;font-size:large;">حساب مصرفي</span><strong><span class="style114"><br>
<br>
حتى تكمل <span lang="ar-sa">ا</span>لتسجيل عليك اختيار 
						طريقة الدفع التي ستتعامل بها مع الكلية</span></strong></span><form  action=""  method="post">
	<div dir="rtl">
		<fieldset name="Group1" style="width: 593px; height: 316px">
		<legend align="right">طريقة الدفع </legend>
		<br>
		<br>
		<table align="center" style="width: 57%" dir="rtl">
			<tr>
				<td colspan="2">
				    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" GroupName="r1" Text="بطاقة مصرفية" AutoPostBack="True" />
                </td>
				<td>
                    <asp:DropDownList ID="ddlCard" runat="server" style="width: 174px">
                        <asp:ListItem>اختر نوع البطاقة</asp:ListItem>
                        <asp:ListItem>Visa Card</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                    </asp:DropDownList>
                   </td>
			</tr>
			<tr>
				<td style="width: 41px">&nbsp;</td>
				<td style="width: 95px"><strong>اسم الحساب&nbsp;</strong></td>
				<td>
				    <asp:TextBox ID="txtAccName1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 41px">&nbsp;</td>
				<td style="width: 95px"><strong>رقم الحساب</strong></td>
				<td>
				    <asp:TextBox ID="txtAccNum1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td colspan="3">  <br>
				</td>
			</tr>
			<tr>
				<td colspan="2">
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" GroupName="r1" Text="حساب مصرفي" AutoPostBack="True" />
                </td>
				<td>
				    <asp:TextBox ID="txtBankName" runat="server" ToolTip="أدخل اسم المصرف"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 41px">&nbsp;</td>
				<td style="width: 95px"><strong>اسم الحساب</strong></td>
				<td>
				    <asp:TextBox ID="txtAccName2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 41px">&nbsp;</td>
				<td style="width: 95px"><strong>رقم الحساب</strong></td>
				<td>
				    <asp:TextBox ID="txtAccNum2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td colspan="3">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
			</tr>
			<tr>
				<td colspan="3" class="style16" >
				<asp:Button ID="Button1" runat="server" Text="فحص الحساب" style="width: 76px" OnClick="Button1_Click" />
                </td>
			</tr>
			</table>
		</fieldset><br>
		<br>
&nbsp;<br>
		<span lang="ar-sa" class="style27">بطاقات مصرفية موثوقة من قبل&nbsp; </span>
		<span lang="en-us" class="style27">VIF</span><br>
		<img alt="" src="images/creditca.gif" width="119" height="23"><br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		</div>
</form>
					</div>
				</div>
				</td>
	</tr>
</table>
		
		
            </td>
        </tr>
    </table>
</asp:Content>

