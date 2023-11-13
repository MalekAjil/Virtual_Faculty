<%@ Page Title="تسجيل مواد" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="register_sub.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <style type="text/css">
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server" >
    <table style="width:100%;height:auto; text-align:center; vertical-align:top;" dir="rtl" >
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server">
                   <table style="width: 500px; height: 396px;text-align:center;" dir="rtl">
				
				<tr>
					<td class="style115" style="height: 39px">شروط التسجيل في 
					المواد</td>
				</tr>
				<tr>
					<td>
<iframe name="I1" id="I1" src="ConditionReg.html" style="border-color: #942101; border-style: none; width: 482px; height: 282px; background-color: #C9DBED;" class="style116">
لا يدعم المستعرض الذي تستخدمه الإطارات المضمنة أو تمت تهيئته حالياً حتى لا يدعم الإطارات المضمنة.
</iframe>&nbsp;</td>
				</tr>
				<tr>
					<td class="style16">
				        <asp:CheckBox ID="CheckBox1" runat="server" Text="أوافق على شروط التسجيل" />
				</td>
				</tr>
				       <tr>
                           <td class="style16">
                               <asp:Button ID="btnResum" runat="server" BackColor="#6666FF" Font-Bold="True" ForeColor="White" Height="26px" OnClick="btnResum_Click" Text="متابعة" Width="59px" />
                               &nbsp;</td>
                       </tr>
				</table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Enabled="False" Visible="False">
                     <table style="width:70%; text-align:center;" dir="rtl">
        <tr>
            <td>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="هذه هي المواد المتاحة لك لتسجيلها "></asp:Label>
        &nbsp;
                <br />
        <br />
                <asp:Panel ID="Panel1" runat="server">
                
                     
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="CourseDataSource" DataTextField="c_name" DataValueField="c_id">
                    </asp:CheckBoxList>
                    <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="select c_id,c_name from course where c_id not in(select c_id from std_crs where std_id=@std_id ) and c_season=@c_season and c_year =@c_year and dept_id=@dept_id">
                        <SelectParameters>
                            <asp:SessionParameter Name="std_id" SessionField="std_num" />
                            <asp:ControlParameter ControlID="SeasonHiddenF" DefaultValue="" Name="c_season" PropertyName="Value" />
                            <asp:ControlParameter ControlID="YearHiddenF" DefaultValue="" Name="c_year" PropertyName="Value" />
                            <asp:ControlParameter ControlID="DeptHiddenF" Name="dept_id" PropertyName="Value" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                
                     
                    </asp:Panel>
                
                <br />
        
    
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" BackColor="#6666FF" Font-Bold="True" ForeColor="White" Height="32px" OnClick="btnReg_Click" Text="تسجيل" Width="96px" />
        <br />
        <br />
    
    <asp:HiddenField ID="SeasonHiddenF" runat="server" />
    
    <asp:HiddenField ID="YearHiddenF" runat="server" />
    <asp:HiddenField ID="DeptHiddenF" runat="server" />
                                        
            </td>
        </tr>
    </table>
    </asp:Panel>
    </td>
            </tr>
        <tr>
            <td>&nbsp;
                <asp:Panel ID="Panel4" runat="server" Visible="False">
                <table align="center" >
		<tr>
		<td >
				<div class="style16" >
					<div class="style16">
<span > <span lang="ar-sa" style="font-family:ae_Hani; color:#ff2a00;font-size:large;">حساب مصرفي</span><strong><span class="style114"><br>
<br>
حتى تكمل <span lang="ar-sa">ا</span>لتسجيل عليك اختيار 
						طريقة الدفع التي ستتعامل بها مع الكلية</span></strong></span><form  action=""  method="post">
	<div dir="rtl" style="font-family: ae_AlArabiya; color: #990000; font-weight: bold">
		<fieldset name="Group1" style="width: 593px; height: 316px">
		<legend align="right">طريقة الدفع </legend>
		    <asp:Label ID="Label6" runat="server" ForeColor="#CC3300" Text="يجب عليك أن تدفع : " ></asp:Label>
		<br>
		    <asp:HiddenField ID="c_priceHiddenF" runat="server" />
		<br>
		<table align="center" style="width: 57%" dir="rtl">
			<tr>
				<td >
				    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" GroupName="r1" Text="بطاقة مصرفية" AutoPostBack="True" />
                </td>
				<td>
                    <asp:DropDownList ID="ddlCard" runat="server" style="width: 174px">
                        <asp:ListItem>اختر نوع البطاقة</asp:ListItem>
                        <asp:ListItem Value="visa">Visa Card</asp:ListItem>
                        <asp:ListItem Value="master">Master Card</asp:ListItem>
                    </asp:DropDownList>
                   </td>
			</tr>
			<tr>
				
				<td style="width: 95px" align="left"><strong>اسم الحساب&nbsp;</strong></td>
				<td>
				    <asp:TextBox ID="txtAccName1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				
				<td style="width: 95px" align="left"><strong>رقم الحساب</strong></td>
				<td>
				    <asp:TextBox ID="txtAccNum1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td colspan="2">  <br>
				</td>
			</tr>
			<tr>
				<td >
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" GroupName="r1" Text="حساب مصرفي" AutoPostBack="True" />
                </td>
				<td>
				    <asp:TextBox ID="txtBankName" runat="server" ToolTip="أدخل اسم المصرف"></asp:TextBox>
                </td>
			</tr>
			<tr>
				
				<td style="width: 95px" align="left"><strong>اسم الحساب</strong></td>
				<td>
				    <asp:TextBox ID="txtAccName2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				
				<td style="width: 95px" align="left"><strong>رقم الحساب</strong></td>
				<td>
				    <asp:TextBox ID="txtAccNum2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td colspan="2">
                    &nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" class="style16" >
				<asp:Button ID="btnComplet" runat="server" Text="فحص الحساب" style="width: 76px" OnClick="btnComplet_Click" BackColor="#3333FF" Font-Bold="True" Font-Names="ae_AlArabiya" ForeColor="White" Width="200px" />
                </td>
			</tr>
			</table>
		</fieldset><br>
		<br>
        <span class="style27" lang="ar-sa">بطاقات مصرفية موثوقة من قبل&nbsp; </span><span class="style27" lang="en-us">VIF</span><br>
        <img alt="" height="23" src="images/creditca.gif" width="119">
        <br />
        <br />

		</div>
</form>
					</div>
				</div>
				</td>
	</tr>
</table>
		
		</asp:Panel>
            </td>
        </tr>
    <tr>
        <td>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
        </td>
    </tr>
        </table>
</asp:Content>

