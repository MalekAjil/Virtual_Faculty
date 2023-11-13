<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LectureVideo.aspx.cs" Inherits="Lecture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;height:auto;">
            <tr>
                <td>
                    
                    <center>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" ID="Captivate1" style="width: 670px; height: 480px">
  <param name="movie" value="../<%Response.Write(Request["l_file"]); %>" />
  <param name="quality" value="High" />
  <param name="loop" value="false" />
  <param name="swliveconnect" value="true" />
  <embed src="../<%Response.Write(Request["l_file"]); %>"  loop="false" quality="High" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="Captivate1" swliveconnect="true" style="width: 670px; height: 480px" /></embed>
</object>
</center>
                    
    
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
