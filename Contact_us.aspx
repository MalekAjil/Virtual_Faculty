<%@ Page Title="" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

<table align="center" id="_____01" cellpadding="0" cellspacing="0" style="height: 700px; width: 100%" dir="rtl" class="style15">
	<tr>
		<td class="style13" align="center" dir="rtl"> 
				
			<div style="width: 567px;">
			
		<strong><span lang="ar-sa" class="style111">لمزيد من المعلومات راسلونا 
		على العناوين التالية:<br>
		</span><span class="style111">
		<br>
		Emails:<br>
            mk-91@windowslive.com<br />
		    hiba93@gmail.com<br>
            fatoom@hotmailc.om<br />
		<br>
		</span></strong></div>
			<table style="width: 414px">
				<tr>
					<td style="height: 21px" class="style112">
					<strong><span class="style115">لإرسال ملاحظاتكم</span><br>
					<br>
					</strong></td>
				</tr>
				<tr>
					<td style="height: 21px" class="style112">
					<table style="width: 92%" dir="rtl">
						<tr>
							<td class="style114" style="width: 95px">
							<span lang="ar-sa"><strong>الاسم</strong></span></td>
							<td>
							    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <span class="style116"> 
							&nbsp;*</span></td>
						</tr>
						<tr>
							<td class="style114" style="width: 95px">
							<span lang="ar-sa"><strong>البريد الالكتروني</strong></span></td>
							<td>
							    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <span class="style116"> 
							&nbsp;*</span></td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>
					    <asp:TextBox ID="TextBox3" runat="server" Height="80px" TextMode="MultiLine" Width="80%"></asp:TextBox>
                        <span class="style116"> 
					&nbsp;*</span></td>
				</tr>
				<tr>
					<td style="height: 24px; ">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
				</tr>
				<tr>
					<td class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="ارسال" OnClick="Button1_Click" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="مسح" Width="79px" />
&nbsp; </td>
				</tr>
			</table>
			
            </td>
        </tr>
    </table>
</asp:Content>

