<%@ Page Title="اضافة طالب" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Add_Student.aspx.cs" Inherits="admin_Default2" %>

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
        .auto-style1 {
        width: 50%;
        border-collapse: collapse;
        border: 3px solid #808080;
        text-align:center;
    }
        .auto-style2 {
            height:800px;
            width: 100%;
            font-family:ae_AlArabiya;
        }
        .auto-style4 {
            width: 184px;
        }
        .auto-style6 {
            height: 26px;
            width: 184px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server"  DefaultButton="Button2">
    <table class="auto-style2" dir="rtl">
        <tr>
            <td align="center">
              <div class="style16" style="color: #CC0000; font-weight: bold; font-size: large; font-family: 'Arabic Typesetting'">
		    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/graphics/ADD-USER.PNG" Height="117px" Width="135px" />
		<strong>
            <br />
            يجب&nbsp; إدخال الحقول بشكل كامل</strong>
		    <br />
		<br>
		</div>
        
		<table style="width: 60%" align="center">
			<tr>
			
				<td colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
				<td style="width: 101px">الصورة الشخصية</td>
				<td  align="center" class="auto-style4">
				    <asp:ImageButton ID="imgStd" runat="server" Height="52px" ImageUrl="~/Images/graphics/add1.png"  Width="76px" OnClick="imgStd_Click" TabIndex="2" />
                    <asp:FileUpload ID="FileUpload1" runat="server" TabIndex="2"  />
                </td>
			</tr>
			<tr>
			
				<td style="width: 100px">الاسم</td>
				<td style="width: 188px; margin-right: 40px;" >
				    <asp:TextBox ID="TxtFname" runat="server" style="width: 175px" TabIndex="1" Font-Bold="True"></asp:TextBox>
                </td>
				<td style="width: 101px">الكنية</td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtLname" runat="server" style="width: 175px" TabIndex="1" Font-Bold="True"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px; height: 26px">اسم الأب</td>
				<td style="width: 188px; height: 26px" >
				    <asp:TextBox ID="TxtFather" runat="server" style="width: 175px" Font-Bold="True" TabIndex="3"></asp:TextBox>
                </td>
				<td style="width: 101px; height: 26px">اسم الأم</td>
				<td class="auto-style6" >
				    <asp:TextBox ID="TxtMother" runat="server" style="width: 175px" Font-Bold="True" TabIndex="4"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">مكان الولادة</td>
				<td style="width: 188px" >
				    <asp:TextBox ID="TxtBirthPlace" runat="server" style="width: 175px" Font-Bold="True" TabIndex="5"></asp:TextBox>
                </td>
				<td style="width: 101px">تاريخ الولادة</td>
				<td class="auto-style4">
                    <asp:TextBox ID="TxtBirthD" CssClass="datepicker" style="width:175px;" runat="server" TextMode="Date" Font-Bold="True" TabIndex="6"></asp:TextBox>  
                    </td>
			</tr>
			<tr>
				<td style="width: 100px">الجنس</td>
				<td style="width: 188px">
				&nbsp; 
                    <asp:DropDownList ID="ddlGender" runat="server" TabIndex="7">
                        <asp:ListItem Value="0">أنثى</asp:ListItem>
                        <asp:ListItem Value="1">ذكر</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td style="width: 101px">الحالة <span lang="ar-sa">الاجتماعية</span></td>
				<td class="auto-style4">
                    <asp:TextBox ID="TxtSocial" runat="server" style="width: 175px" Font-Bold="True" TabIndex="8"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">الدولة</td>
				<td style="width: 188px" >
                    <asp:DropDownList ID="ddlCountry" runat="server" style="width: 175px" TabIndex="9">
                        <asp:ListItem>سورية</asp:ListItem>
                        <asp:ListItem>لبنان</asp:ListItem>
                        <asp:ListItem>الأردن</asp:ListItem>
                        <asp:ListItem>العراق</asp:ListItem>
                        <asp:ListItem>فلسطين</asp:ListItem>
                        <asp:ListItem>السعودية</asp:ListItem>
                        <asp:ListItem>مصر</asp:ListItem>
                        <asp:ListItem>ليبيا</asp:ListItem>
                        <asp:ListItem>السودان</asp:ListItem>
                        <asp:ListItem>اليمن</asp:ListItem>
                        <asp:ListItem>الإمارات العربية المتحدة</asp:ListItem>
                    </asp:DropDownList>
				</td>
                		<td style="width: 101px">المدينة</td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtCity" runat="server" style="width: 175px" Font-Bold="True" TabIndex="10"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">العنوان</td>
				<td style="width: 188px" >
				    <asp:TextBox ID="TxtAddress" runat="server" style="width: 175px; height:25px" TextMode="MultiLine" TabIndex="11"></asp:TextBox>
                </td>
				<td style="width: 101px">رقم&nbsp; الهاتف</td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtPhone" runat="server" style="width: 175px" onkeypress="CheckNumeric()" Font-Bold="True" TabIndex="12"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">الشهادة التي تحملها</td>
				<td style="width: 188px">
				&nbsp;
				    <asp:DropDownList ID="ddlDiploma" runat="server" TabIndex="13">
                        <asp:ListItem>شهادة ثانوية</asp:ListItem>
                        <asp:ListItem>معهد متوسط</asp:ListItem>
                        <asp:ListItem>جامعية</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td style="width: 101px"><span lang="ar-sa">اختصاص الشهادة</span></td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtSpecialization" runat="server" style="width: 175px" Font-Bold="True" TabIndex="14" ></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">البريد الإلكتروني</td>
				<td style="width: 188px">
				    <asp:TextBox ID="TxtEmail" runat="server" style="width: 175px" Font-Bold="True" TextMode="Email" TabIndex="15"></asp:TextBox>
                    
                </td>
				<td style="width: 101px">القسم</td>
				<td class="auto-style4" >
				    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="deptDataSource" DataTextField="d_name" DataValueField="d_id" TabIndex="16">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="deptDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [d_id], [d_name] FROM [Department]"></asp:SqlDataSource>
                </td>
			</tr>
			<tr>
                <td style="width: 100px">اسم المستخدم</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtUserName" runat="server" style="width: 175px" Font-Bold="True" TabIndex="17"></asp:TextBox>
                </td>
                <td style="width: 101px">كلمة المرور</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPass" runat="server" style="width: 175px" Font-Bold="True" TabIndex="18"></asp:TextBox>
                </td>
            </tr>
			<tr>
				<td colspan="4">
                    <asp:ListBox ID="ListBox1" runat="server" Font-Bold="True" ForeColor="Red" Width="100%" Height="24px"></asp:ListBox>
                </td>
			</tr>
			<tr>
				<td colspan="4">
                    &nbsp;</td>
			</tr><tr><td style="width: 100px"></td>
						<td class="style16">
				            <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="ارسال طلب التسجيل" Width="150px" OnClick="Button2_Click" Font-Names="ae_AlMothnna" TabIndex="19" />
                        </td>
						<td class="style16">
						   <asp:Button ID="Button3" runat="server" Text="إعادة تعيين" OnClick="Button3_Click" Height="38px" Width="151px" TabIndex="20" />
                        </td>
                <td>
 <asp:HiddenField ID="HiddenField1" runat="server" />
                            <asp:HiddenField ID="HiddenField2" runat="server" />
						    
                </td>
				</tr>
				
		</table>         
                <br>
	<br>
		
            </td>
        </tr>
    </table>
        </asp:Panel>                
</asp:Content>

