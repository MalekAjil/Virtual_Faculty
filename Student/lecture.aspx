<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lecture.aspx.cs" Inherits="Student_lec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width:100%;height:auto;">
         <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/default_banner.jpg" Width="100%" />
                    </td>
                </tr>   
         <tr>
                <td align="center">                                      
                    <iframe name="I1" id="I1" src="pptlecture.html" style="border-color: #942101; border-style: none; width: 800px; height:600px; background-color: #C9DBED;" class="style116">
لا يدعم المستعرض الذي تستخدمه الإطارات المضمنة أو تمت تهيئته حالياً حتى لا يدعم الإطارات المضمنة.
</iframe>    
                </td>
            </tr>
        </table>
    
        
    
    </div>
    </form>
</body>
</html>
