<%@ Page Title="أهلاً وسهلاً بكم في " Language="C#" MasterPageFile="~/Site_ar.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td>
                
                <table dir="rtl">
                    <tr>
                        <td><strong><marquee behavior="alternate" style="font-family:ae_Granada" direction="right" scrollamount="4" class="style118">
                كلية تقانة المعلومات الافتراضية: كلية الكترونية على الويب للتعليم التفاعلي - مشروع للسنة الرابعة: إعداد الطلاب : مالك العجيل & هبة الدوجان & فاطمة صوفان&nbsp; وبإشراف الدكتور المحترم : يحيى نجار&nbsp; - نأمل أن ينال إعجابكم

			</marquee></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/01.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">&nbsp;
                            <span lang="ar-sa" class="style34"><strong><span class="style37">آخر الأخبار ... خلال الـ </span>
				</strong></span><span class="style34"><strong>
				<span class="style37">24</span></strong><span lang="ar-sa" class="style37"><strong> 
				ساعة الماضية
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <table style="width: 590px; height: 681px" dir="rtl" align="center" >
				<tr>
					<td class="style31" style="width: 168px">
					<span lang="ar-sa" class="style9">
					<strong>&nbsp;فرص عمل ..</strong></span>&nbsp;</td>
					<td style="width: 30px">&nbsp;</td>
					<td class="style35" style="width: 157px">
					<strong>مطلوب حل...&nbsp;</strong></td>
					<td style="width: 30px">
					</td>
					<td class="style36">
					<span lang="ar-sa" class="style9"><strong>&nbsp;نتائج ...</strong></span>&nbsp;</td>
				</tr>
				<tr>
					<td class="style16" style="height: 113px; width: 168px;">
					    <asp:Image ID="Image3" runat="server" Width="175" Height="225" ImageUrl="~/news/company.jpg" />
                    </td>
					<td style="height: 113px; width: 30px"></td>
					<td style="height: 113px; width: 157px;" class="style16">
					    <asp:Image ID="Image4" runat="server" Width="175" Height="225" ImageUrl="~/news/solution.jpg"/>
                    </td>
					<td style="height: 113px; width: 30px"></td>
					<td style="height: 113px; width: 170px;" class="style16">
                        <asp:Image ID="Image1" runat="server" width="175" height="225" ImageUrl="~/news/results.jpg"/></td>
				</tr>
				<tr>
					<td class="style17" style="width: 168px">
                        <asp:Label ID="Label1" runat="server" Text="أبدت إحدى الشركات الروسية المميزة رغبتها بتشغيل الطلاب المتخرجين من كلية Virtual Informatics Faculty خاصة بعد أن اطلعت على آخر ... " />
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/news.aspx">المزيد</asp:HyperLink>
                        </td>

					<td style="width: 30px">&nbsp;</td>
					<td style="width: 157px">
                        <asp:Label ID="Label2" runat="server" Text="البيانات الورقية ؟ هل يمكننا أن نستغني عنها ... "></asp:Label>
                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/news.aspx">المزيد</asp:HyperLink>
                        </td>
					<td style="width: 30px"></td>
					<td>
                        صدرت اليوم نتائج المواد التالية:
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="تقنات انترنت - شبكات حاسوبية - اتصالات رقمية - ..."></asp:Label>
                        <span lang="ar-sa">&nbsp;
					</span>
                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/news.aspx">المزيد</asp:HyperLink>
                        &nbsp;</td>
				</tr>
				<tr>
					<td class="style17" colspan="5">&nbsp;</td>
				</tr>
				<tr>
					<td class="style71" style="width: 168px">
						<span lang="ar-sa" class="style9"><strong>فيس بوك ...</strong></span></td>
					<td style="width: 30px">&nbsp;</td>
					<td class="style72" style="width: 157px">
						<span lang="ar-sa" class="style9"><strong>مرحبا .. </strong>
                        <asp:Label ID="lblStdName0" runat="server" Text="مالك العجيل" Font-Bold="True" ForeColor="White"></asp:Label>
                        </span></td>
					<td style="width: 30px">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="style17" style="width: 168px">
						<asp:Image ID="Image5" runat="server" width="175" height="225" ImageUrl="~/news/facebook.jpg"/>
                    </td>
					<td style="width: 30px">&nbsp;</td>
					<td style="width: 157px">
						<asp:Image ID="Image6" runat="server" width="175" height="225" ImageUrl="~/news/مالك العجيل.jpg" />
                    </td>
					<td style="width: 30px">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="style17" style="width: 168px">
                        <asp:Label ID="Label5" runat="server" Text="وصل عدد معجبي صفحة Virtual Informatics Faculty  على الفيس بوك أكثر من .... "></asp:Label>
                        <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/news.aspx">المزيد</asp:HyperLink>
                        </td>
					<td style="width: 30px">&nbsp;</td>
					<td style="width: 157px">نرحب بالطالب الجديد 
                        <asp:Label ID="lblStdName1" runat="server" Text="مالك العجيل " Font-Bold="True"></asp:Label>
&nbsp;الذي قام&nbsp;بالتسجيل في كلية <span lang="en-us">Virtual Informatics Faculty</span> يذكر أن&nbsp; 
                        <asp:Label ID="lblStdName2" runat="server" Text="مالك العجيل " Font-Bold="True"></asp:Label>
&nbsp; قد كان ...
						<asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/news.aspx">المزيد</asp:HyperLink>
                        </td>
					<td style="width: 30px">&nbsp;</td>
					<td>&nbsp;لمشاهدة المزيد من الأخبار ...
						<asp:HyperLink ID="HyperLink8" runat="server" Font-Size="Smaller" ForeColor="Blue" NavigateUrl="~/news.aspx">اضغط هنا</asp:HyperLink>
                        </td>
				</tr>
			</table>

                        </td>
                    </tr>
                </table>
                 <br />
    <br />
                </td>
        </tr>
        </table>
   
</asp:Content>

