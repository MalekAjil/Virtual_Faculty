<%@ Control Language="C#" AutoEventWireup="true" CodeFile="voting_ar.ascx.cs" Inherits="voting_ar" %>

<style type="text/css">
    .auto-style1 {
        width: 102px;
        height: 32px;
    }
    .auto-style2 {
        width: 90px;
        height: 32px;
    }
</style>

<table style="width: 78%; height: 128px;" dir="rtl" class="style607" align="center">
						<tr>
							<td class="style601" colspan="2"><strong>تصويت 
							VIFaculty</strong></td>
		
						</tr>
						<tr>
							<td class="style603" colspan="2">
							<div class="style605">
								<strong><br>
								هل ترى أن التعليم الالكتروني يحقق غايتك ؟<br>
								</strong></div>
							</td>
                            
						</tr>
						<tr>
						<td class="auto-style1">
					<a href="voting.aspx?c=yes" Target="_popup">
                        <img  src="Images/Button/btnYes.jpg" alt="yes" width="50"
                                 id="imgYes" name="imgYes" border="0"
                             onmouseover="this.src='Images/Button/btnYes_1.jpg'" 
                                onmouseout="this.src='Images/Button/btnYes.jpg'" 
                                onmousedown="this.src='Images/Button/btnYes_2.jpg'"
                                 onmouseup="this.src='Images/Button/btnYes_1.jpg'"/>
					      </a>
                            </td>
						<td class="auto-style2">
				
                            <a href="voting.aspx?c=no" Target="_popup"> 
                                <img src="Images/Button/btnNo.jpg" alt="no" width="50"
                                 id="imgNo" name="imgNo" border="0"
                                onmouseover="this.src='Images/Button/btnNo_1.jpg'" 
                                onmouseout="this.src='Images/Button/btnNo.jpg'" 
                                onmousedown="this.src='Images/Button/btnNo_2.jpg'"
                                 onmouseup="this.src='Images/Button/btnNo_1.jpg'"/>
      </a>
                            </td>
						
						</tr>
						</table>