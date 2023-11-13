<%@ Page Title="تسجيل جديد" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="sign_up.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <LINK rel=stylesheet href="Date%20-%20Time%20Picker_files/main.css">
    <LINK rel=stylesheet href="Date%20-%20Time%20Picker_files/rating.css">
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/main.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/prototype-1.6.0.2.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/prototype-base-extensions.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/prototype-date-extensions.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/behaviour.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/ratingbar.js"></SCRIPT>
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/datepicker.js"></SCRIPT>
    <LINK rel=stylesheet href="Date%20-%20Time%20Picker_files/datepicker.css">
    <SCRIPT lang=javascript type=text/javascript src="Date%20-%20Time%20Picker_files/behaviors.js"></SCRIPT>

  <script type="text/javascript">
 

      function CheckNumeric() {
 

          if ((event.keyCode < 48 || event.keyCode > 57)) {
 

              event.returnValue = false;
 

          }
 

      }
 

      </script>

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
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            width: 184px;
        }
        .auto-style6 {
            height: 26px;
            width: 184px;
        }
        .auto-style7 {
            width: 331px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table class="auto-style2" dir="rtl">
        <tr>
            <td><asp:Panel ID="Panel2" runat="server" DefaultButton="Button1">  
                <table id="tb1" align="center" class="auto-style1" dir="rtl">
                    <tr>
                        <td colspan="2"><strong>
                            أولاً يجب عليك إدخال رقم القبول الذي حصلت عليه من الجامعة بعد صدور نتائج المفاضلة :
                            </strong> </td>
                    </tr>
                    <tr>
                        <td><strong> رقم القبول : </strong></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox1" runat="server" onkeypress="CheckNumeric()"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style3">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="تـــأكـــد" Font-Bold="True" Width="80px" OnClick="Button1_Click" Font-Names="ae_AlBattar" />
                        </td>
                    </tr>
                </table>
                </asp:Panel>

                <br />
                
                </td>
            </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" Enabled="False" DefaultButton="Button2">
                                    <fieldset name="Group1" style="width: 60%; height: 351px">
		<legend><strong>&nbsp; بيانات الطالب  

		        </strong></legend>
		<div class="style16" style="color: #CC0000; font-weight: bold; font-size: large; font-family: 'Arabic Typesetting'">
		    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/graphics/ADD-USER.PNG" Height="117px" Width="135px" />
		<strong>
            <br />
            يجب&nbsp; إدخال الحقول بشكل كامل</strong>
		    <br />
		<br>
		</div>
        
		<table style="width: 98%" align="center">
			<tr>
			
				<td style="width: 100px">&nbsp;</td>
				<td style="width: 188px" >
				    &nbsp;</td>
				<td style="width: 101px">الصورة الشخصية</td>
				<td  align="center" class="auto-style4">
				    <asp:ImageButton ID="imgStd" runat="server" Height="52px" ImageUrl="~/Images/graphics/add1.png"  Width="76px" OnClick="imgStd_Click" PostBackUrl="~/sign_up.aspx" />
                    <asp:FileUpload ID="FileUpload1" runat="server" Enabled="False" OnLoad="FileUpload1_Load" />
                </td>
			</tr>
			<tr>
			
				<td style="width: 100px">الاسم</td>
				<td style="width: 188px; margin-right: 40px;" >
				    <asp:TextBox ID="TxtFname" runat="server" style="width: 175px" TabIndex="1" Enabled="False" Font-Bold="True"></asp:TextBox>
                </td>
				<td style="width: 101px">الكنية</td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtLname" runat="server" style="width: 175px" TabIndex="2" Enabled="False" Font-Bold="True"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px; height: 26px">اسم الأب</td>
				<td style="width: 188px; height: 26px" >
				    <asp:TextBox ID="TxtFather" runat="server" style="width: 175px" Enabled="False" Font-Bold="True"></asp:TextBox>
                </td>
				<td style="width: 101px; height: 26px">اسم الأم</td>
				<td class="auto-style6" >
				    <asp:TextBox ID="TxtMother" runat="server" style="width: 175px" Enabled="False"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">مكان الولادة</td>
				<td style="width: 188px" >
				    <asp:TextBox ID="TxtBirthPlace" runat="server" style="width: 175px"></asp:TextBox>
                </td>
				<td style="width: 101px">تاريخ الولادة</td>
				<td class="auto-style4">
                    <asp:TextBox ID="TxtBirthD" class="datepicker" style="width:175px;" runat="server" TextMode="Date"></asp:TextBox>  
                    </td>
			</tr>
			<tr>
				<td style="width: 100px">الجنس</td>
				<td style="width: 188px">
				&nbsp; 
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="0">أنثى</asp:ListItem>
                        <asp:ListItem Value="1">ذكر</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td style="width: 101px">الحالة <span lang="ar-sa">الاجتماعية</span></td>
				<td class="auto-style4">
                    <asp:TextBox ID="TxtSocial" runat="server" style="width: 175px"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">الدولة</td>
				<td style="width: 188px" >
                    <asp:DropDownList ID="ddlCountry" runat="server" style="width: 175px">
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
				    <asp:TextBox ID="TxtCity" runat="server" style="width: 175px"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">العنوان</td>
				<td style="width: 188px" >
				    <asp:TextBox ID="TxtAddress" runat="server" style="width: 175px; height:25px" TextMode="MultiLine"></asp:TextBox>
                </td>
				<td style="width: 101px">رقم&nbsp; الهاتف</td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtPhone" runat="server" style="width: 175px" onkeypress="CheckNumeric()" />
                </td>
			</tr>
			<tr>
				<td style="width: 100px">الشهادة التي تحملها</td>
				<td style="width: 188px">
				&nbsp;
				    <asp:DropDownList ID="ddlDiploma" runat="server">
                        <asp:ListItem>شهادة ثانوية</asp:ListItem>
                        <asp:ListItem>معهد متوسط</asp:ListItem>
                        <asp:ListItem>جامعية</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td style="width: 101px"><span lang="ar-sa">اختصاص الشهادة</span></td>
				<td class="auto-style4" >
				    <asp:TextBox ID="TxtSpecialization" runat="server" style="width: 175px" ></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td style="width: 100px">البريد الإلكتروني</td>
				<td style="width: 188px">
				    <asp:TextBox ID="TxtEmail" runat="server" style="width: 175px"></asp:TextBox>
                    
                </td>
				<td style="width: 101px">&nbsp;</td>
				<td class="auto-style4" >
				    &nbsp;</td>
			</tr>
			<tr>
				<td colspan="4">
                    <asp:ListBox ID="ListBox1" runat="server" Font-Bold="True" ForeColor="Red" Width="100%" Height="24px"></asp:ListBox>
                </td>
			</tr>
			<tr>
				<td colspan="4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
			</tr>
			<tr>
				<td colspan="4" class="style16"  ><br>
				<table style="width: 42%">
					<tr>
						<td class="style16">
				            <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="ارسال طلب التسجيل" Width="123px" OnClick="Button2_Click" Font-Names="ae_AlMothnna" />
                        </td>
						<td class="style16">
						    <asp:HiddenField ID="HiddenField1" runat="server" />
                            <asp:HiddenField ID="HiddenField2" runat="server" />
						    <asp:Button ID="Button3" runat="server" Text="إعادة تعيين" OnClick="Button3_Click" />
                        </td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
           
		</fieldset>
                 </asp:Panel>                
                <br>
	<br>
		
            </td>
        </tr>
    </table>
</asp:Content>

