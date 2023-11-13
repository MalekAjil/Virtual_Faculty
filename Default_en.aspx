<%@ Page Title="Welcome in Virtual Informatics Faculty" Language="C#" MasterPageFile="~/Site_en.Master" AutoEventWireup="true" CodeFile="Default_en.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table width="100%">
        <tr>
            <td>
                <table dir="ltr">
                    <tr>
                        <td>&nbsp;<strong><marquee behavior="alternate" direction="left" scrollamount="4" style="font-family:Shortcut">
                            Virtual Informatics Faculty (VIF):is Virtual Faculty on web for interactive learning - 4th year project - Work of students : Malek Al-Ajil & Hiba Al-Dojan & Fatema Sofan - SuperVised by : Dr.Yhya Najjar - We hope that you like it 
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
                            <span lang="ar-sa" class="style34"><strong><span class="style37">The last news in 24 last hours  </span>
				</strong></span>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                            <table style="width: 590px; height: 681px" dir="ltr" align="center">
				<tr>
					<td class="style31" style="width: 168px">
					<span lang="ar-sa" class="style9">
					<strong>&nbsp;Job chances ..</strong></span>&nbsp;</td>
					<td style="width: 30px">&nbsp;</td>
					<td class="style35" style="width: 157px">
					<strong>Required a Solution ...&nbsp;</strong></td>
					<td style="width: 30px">
					</td>
					<td class="style36">
					<span lang="ar-sa" class="style9"><strong>&nbsp;Results ...</strong></span>&nbsp;</td>
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
					<td class="style17" style="width: 168px" >
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><a href='فرصة%20عمل.txt' class='style34'> <span class="style27">	more</span> </a></td>

					<td style="width: 30px">&nbsp;</td>
					<td style="width: 157px">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label><a href='aaa' class='style34'> <span class="style27">
					more</span></a></td>
					<td style="width: 30px"></td>
					<td>
                        The folowing courses results is viewed Today :
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="تقنات انترنت - شبكات حاسوبية - اتصالات رقمية - ..."></asp:Label>
                        <span lang="ar-sa">&nbsp;
					<a href="نتائج.txt" class="style34"><span class="style27">
					more</span></a></span>&nbsp;</td>
				</tr>
				<tr>
					<td class="style17" colspan="5">&nbsp;</td>
				</tr>
				<tr>
					<td class="style71" style="width: 168px">
						<span lang="ar-sa" class="style9"><strong>Facebook ...</strong></span></td>
					<td style="width: 30px">&nbsp;</td>
					<td class="style72" style="width: 157px">
						<span lang="ar-sa" class="style9"><strong>Hello .. </strong>
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
                        <span class="style29">
						<a href="_index.html"><span class="style34"> more </span></a></span></td>
					<td style="width: 30px">&nbsp;</td>
					<td style="width: 157px">Welcome the new student :  
                        <asp:Label ID="lblStdName1" runat="server" Text="مالك العجيل " Font-Bold="True"></asp:Label>Who have registered in <span lang="en-us">Virtual Informatics Faculty.</span> Mentioned that &nbsp; 
                        <asp:Label ID="lblStdName2" runat="server" Text="مالك العجيل " Font-Bold="True"></asp:Label>
&nbsp; was ...
						<span class="style29"><a href="_index.html">
						<span class="style34"> more </span></a></span></td>
					<td style="width: 30px">&nbsp;</td>
					<td>&nbsp;for more news ...
						<a href="_index.html" class="style34">
					<span class="style27"> Click here</span></a></td>
				</tr>
			</table>

                        </td>
                    </tr>
                </table>
                </td>
        </tr>
        </table>
</asp:Content>
