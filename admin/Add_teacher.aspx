<%@ Page Title="إضافة مدرس" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Add_teacher.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
       <LINK rel=stylesheet href="../Date%20-%20Time%20Picker_files/main.css">
    <LINK rel=stylesheet href="../Date%20-%20Time%20Picker_files/rating.css">
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/main.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/prototype-1.6.0.2.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/prototype-base-extensions.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/prototype-date-extensions.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/behaviour.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/ratingbar.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/datepicker.js"></SCRIPT>
    <LINK rel=stylesheet href="../Date%20-%20Time%20Picker_files/datepicker.css">
    <SCRIPT lang=javascript type=text/javascript src="../Date%20-%20Time%20Picker_files/behaviors.js"></SCRIPT>

    <style type="text/css">                 
        .auto-style2 {
            
            width: 100%;
            vertical-align:top;
            font-family:ae_AlArabiya;
        }
        .auto-style3 {
            width: 120px;
        }
        .auto-style5 {
            height: 26px;
            width: 120px;
        }
        .auto-style7 {
            height: 26px;
            width: 200px;
        }
        .auto-style8 {
            width: 200px;
        }
        .auto-style9 {
            height: 26px;
            width: 201px;
        }
        .auto-style10 {
            width: 201px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
      <table class="auto-style2" dir="rtl">
                <tr>
            <td >
                
		<div align="center" class="style16" style="color: #CC0000; font-weight: bold; font-size: large; font-family: 'Arabic Typesetting'">
		    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/graphics/ADD-USER.PNG" Height="117px" Width="135px" />
		<strong>
            <br />
            يجب&nbsp; إدخال الحقول بشكل كامل</strong>
		    <br />
		<br>
		</div>
        
        <table style="width: 70%" align="center">
			<tr>
			
				<td class="auto-style3">
                    &nbsp;</td>
				<td class="auto-style8" >
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
				<td class="auto-style3">الصورة الشخصية</td>
				<td  align="center" class="auto-style9">
				    <asp:ImageButton ID="imgStd" runat="server" Height="60px" ImageUrl="~/Images/graphics/add1.png" Width="60px" OnClick="imgStd_Click" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
			</tr>
			<tr>
			
				<td class="auto-style3">الاسم</td>
				<td style="margin-right: 40px;" class="auto-style8" >
				    <asp:TextBox ID="TxtFname" runat="server" style="width: 175px" TabIndex="1" Font-Bold="True"></asp:TextBox>
                </td>
				<td class="auto-style3">الكنية</td>
				<td class="auto-style9" >
				    <asp:TextBox ID="TxtLname" runat="server" style="width: 175px" TabIndex="2" Font-Bold="True"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td class="auto-style5">اسم الأب</td>
				<td class="auto-style7" >
				    <asp:TextBox ID="TxtFather" runat="server" style="width: 175px" Font-Bold="True"></asp:TextBox>
                </td>
				<td class="auto-style5">اسم الأم</td>
				<td class="auto-style10" >
				    <asp:TextBox ID="TxtMother" runat="server" style="width: 175px"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td class="auto-style3">مكان الولادة</td>
				<td class="auto-style8" >
				    <asp:TextBox ID="TxtBirthPlace" runat="server" style="width: 175px"></asp:TextBox>
                </td>
				<td class="auto-style3">تاريخ الولادة</td>
				<td class="auto-style9">
                    <asp:TextBox ID="TxtBirthD" CssClass="datepicker" style="width:175px;" runat="server" TextMode="Date" ></asp:TextBox>  
                    </td>
			</tr>
			<tr>
				<td class="auto-style3">الجنس</td>
				<td class="auto-style8">
				&nbsp; 
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="0">أنثى</asp:ListItem>
                        <asp:ListItem Value="1">ذكر</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td class="auto-style3">الحالة <span lang="ar-sa">الاجتماعية</span></td>
				<td class="auto-style9">
                    <asp:TextBox ID="TxtSocial" runat="server" style="width: 175px"></asp:TextBox>
                </td>
			</tr>
			
			<tr>
				<td class="auto-style3">الشهادة التي تحملها</td>
				<td class="auto-style8">
				&nbsp;
				    <asp:DropDownList ID="ddlDiploma" runat="server">
                        <asp:ListItem>دكتوراه</asp:ListItem>
                        <asp:ListItem>هندسة</asp:ListItem>
                        <asp:ListItem>جامعية</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td class="auto-style3"><span lang="ar-sa">اختصاص الشهادة</span></td>
				<td class="auto-style9" >
				    <asp:TextBox ID="TxtSpecialization" runat="server" style="width: 175px" ></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td class="auto-style3">البريد الإلكتروني</td>
				<td class="auto-style8">
				    <asp:TextBox ID="TxtEmail" runat="server" style="width: 175px"></asp:TextBox>
                    
                </td>
				<td class="auto-style3">رقم&nbsp; الهاتف</td>
				<td class="auto-style9" >
				    <asp:TextBox ID="TxtPhone" runat="server" style="width: 175px"></asp:TextBox>
                </td>
			</tr>
			<tr>
                <td class="auto-style3">اسم المستخدم</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TxtUserName" runat="server" Width="160px"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">كلمة المرور</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtUserPass" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>  		
			<tr>
				<td colspan="4">
                    <asp:ListBox ID="ListBox1" runat="server" Font-Bold="True" ForeColor="Red" Width="100%" Height="39px"></asp:ListBox>
                </td>
			</tr>
			<tr>
				<td colspan="4">
                    &nbsp;</td>
			</tr>
			<tr>
				<td colspan="4" class="style16"  ><br>
				<table style="width: 42%">
					<tr>
						<td class="style16">
				            <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="تسجيل" Width="123px" OnClick="Button2_Click" Font-Names="ae_Cortoba" />
                        </td>
						<td class="style16">
						    <asp:Button ID="Button3" runat="server" Text="إعادة تعيين" OnClick="Button3_Click" Font-Names="ae_Cortoba" />
                                    </td>
					</tr>
				</table>
				<br />
                    <br />
                     </td>
        </tr>
    </table>     
       
            </td>
        </tr>
    </table>
</asp:Content>

