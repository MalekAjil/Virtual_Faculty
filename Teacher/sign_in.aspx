<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign_in.aspx.cs" Inherits="Teacher_singin" %>

<%@ Register src="../linksWUC.ascx" tagname="linksWUC" tagprefix="uc1" %>

<%@ Register src="Tlog_in_wuc.ascx" tagname="Tlog_in_wuc" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../MyStyle.css" />
    <style type="text/css">

           .auto-style1 {
            width: 90%;
            height:500px;
            text-align:center;
            vertical-align:top;
            border-collapse: collapse;
            background-image: url('../Images/online.jpg');
        }
        .table-style1 {
            width: 90%;                      
            text-align:center;
            vertical-align:top;
            background-color:white;
                    }
</style>
</head>
<body>
   <body >
    <form id="form2" runat="server">
        <table class="table-style1" align="center">
            <tr>
                <td height="200px">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/02.jpg" Width="100%" Height="100%" />
                </td>
            </tr>
            <tr>
                 <td colspan="2" class="style4" style="height: 45px">
                    <table style="height: 48px; width: 80%" align="center">
					<tr>
						<td class="style16" style="width: auto">
						<a title="الصفحة الرئيسية" href="../Default.aspx">
                            <img alt="" src="../Images/graphics/CoBra (351).png" width="20" height="23" class="style42" />
						<img alt="" src="../images/home.gif" width="100" height="23" class="style42" /></a></td>
						<td class="style41" style="width: 15px">|</td>
						<td class="style41" style="width: auto">
						<a href="../sign_up.aspx">
						<img alt="" src="../images/reg.gif" width="114" height="23" class="style42"/></a></td>
						<td class="style41" style="width: 15px">|</td>
						<td class="style41" style="width: auto">
						<a title="صفحة تسجيل المواد" href="../Register_Sub.aspx">
						<img alt="" src="../images/lsseon.gif" width="103" height="23" class="style42" /></a></td>
						<td class="style41" style="width: 15px">|</td>
						<td class="style41" style="width: auto">
						<a title="التعلم والتعليم" href="../Learning.aspx">
						<img alt="" src="../images/learning.gif" width="119" height="23" class="style69"/></a></td>
						<td class="style41" style="width: 15px">|</td>
						<td class="style41" style="width: auto">
						<a title="منتدى الطلاب" href="../Forum.aspx">
						<img alt="" src="../images/fourm.gif" width="110" height="23" class="style69" /></a></td>
						<td class="style41" style="width: 15px">|</td>
						<td class="style16" style="width: auto">
						<a title="قسم الشهادات والمراجع" href="../ref.aspx">
						<img alt="" src="../images/ref.gif" width="150" height="23" class="style69" /></a></td>
					</tr>
				</table>
                    </td>
                           </tr>
           
            <tr>
                <td class="auto-style1" dir="rtl" style="vertical-align:top">&nbsp;<br />
             
                    <br />
                    <br />
                    <br />
                    <br />
             
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table style="width:auto" align="center">
                    <tr>
                        <td>                        
                            
                            
                            <uc2:Tlog_in_wuc ID="Tlog_in_wuc1" runat="server" />
                            
                            
                            
                        </td>
                    </tr>
                </table>
              &nbsp;<br />
                ان كنت تملك حساباً وتريد تغييره
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#660066" NavigateUrl="change_log.aspx">اضغط هنا</asp:HyperLink>
            </td>
        
            </tr>
            <tr>
		<td  align="center" > 
		    <div class="text-center">
		<span lang="ar-sa" class="style29"><span lang="ar-sa" class="style109">
		<strong></strong></span><a href="../Default.aspx" class="style111"><strong>الصفحة 
		الرئيسية</strong></a><span class="style23"><strong> ||&nbsp; </strong>
		</span><a href="../Learning.aspx" class="style111"><strong>قسم التعليم</strong></a><span 

class="style23"><strong>&nbsp; ||&nbsp; 
		</strong></span><a href="../Forum.aspx" class="style111"><strong>منتدى الطلاب</strong></a><span 

class="style23"><strong>&nbsp; ||&nbsp; 
		</strong></span><a href="../about_us.aspx" class="style111"><strong>من نحن</strong></a><span 

class="style23"><strong>&nbsp; ||&nbsp; 
		</strong></span><a href="../Contact_us.aspx" class="style111"><strong>للتواصل معنا ..&nbsp;</strong></a><br>
		<strong>
				
				<table style="width: 118px; align="center"  class="style42">
					<tr>
						<td class="style16">
						    <a title="google" href="http://www.google.com/VIF">
						<img alt="" src="../images/Google.png" width="20" height="20" 

class="style69"></a>&nbsp;</td>
						<td class="style16">
						<a title="twitter" href="http://www.twitter.com/VIF">
						<img alt="" src="../images/twitter.png" width="20" height="20" 

class="style69"></a>&nbsp;</td>
						<td class="style16">
						<a title="facebook" href="http://www.facebook.com/VIF">
						<img alt="" src="../images/FaceBook.png" width="20" height="20" class="style70"></a>&nbsp;</td>
						<td class="style16">
						<a title="yutube" href="http://www.yutube.com/VIF">
						<img alt="" src="../images/youtube.png" width="20" height="21" 

class="style69"></a>&nbsp;

						</td>
					</tr>
    			</table>
			</strong></span></div></td>
		
	</tr>
            <tr>
                <td>
                    <hr width="70%" margin="auto" />
                    <center><asp:Label ID="Label2" runat="server" Text="جميع الحقوق محفوظة &lt; كلية تقانة المعلومات الافتراضية &gt; &amp;copy 2015" Font-Names="Agency FB" ForeColor="DarkGray" Font-Size="Small" ></asp:Label></center>
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>