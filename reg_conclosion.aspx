<%@ Page Title="تهانينا..!" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="reg_conclosion.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            font-family:ae_Rehan;
            border-collapse: collapse;
            border: 4px solid #FF00FF;
        }
        .auto-style2 {
        height:40px;
        }
        .auto-style3 {
        background-color:#7392f6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <script lang="ja" type="text/javascript">
        alert("تهانينا..\n لقد تمت عملية التسجيل بنجاح \nولكنك لن تستطيع الدخول إلى الموقع والخوض فيه..\nوتسجيل المواد \n  إلا بعد أن يتحقق مدير الموقع من البيانات ويوافق على طلب تسجيلك \n هذا لن يأخذ وقتاً أكثر من يوم واحد");
    
    </script>
    <table align="center" class="auto-style1" dir="rtl" cellpadding="2" cellspaceing="3">
        <tr>
            <td colspan="4" align="center" >
              
                <br />
                <asp:Label ID="Label34" runat="server" Font-Bold="True" ForeColor="Blue" Text="لقد قمت بإدخال البيانات التالية : "></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image2" runat="server" style="z-index: 1; left: 230px; top: 260px; position: absolute" Width="100" Height="100" ImageUrl="~/Student/std_pics/مالك العجيل.jpg"/>
                <br />
            </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="الاسم"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label20" runat="server" Text="الكنية"></asp:Label>
            </td >
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label21" runat="server" Text="اسم الأب"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label22" runat="server" Text="اسم الأم"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label23" runat="server" Text="مكان الولادة"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label24" runat="server" Text="تاريخ الميلاد"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label25" runat="server" Text="الجنس"></asp:Label>
            </td>
            <td class="auto-style2" style="direction: rtl">
                <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="الحالة الاجتماعية"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label27" runat="server" Text="البلد"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label28" runat="server" Text="المدينة"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label13" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label29" runat="server" Text="العنوان"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label14" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label30" runat="server" Text="رقم الهاتف"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label15" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label31" runat="server" Text="الشهادة التي تحملها"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label16" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label32" runat="server" Text="الاختصاص"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label17" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label33" runat="server" Text="البريد الالكتروني"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label18" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label40" runat="server" Text="القسم"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label39" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label35" runat="server" Text="اسم المستخدم"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label37" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:Label ID="Label36" runat="server" Text="كلمة السر"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label38" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" >
                <br />
                <br />
            </td>
        </tr>
        
            <td></td>
            <td align="center" >
	        <input type=button value='طباعة' style="font-size: large; font-weight: bold; color: #FFFFFF; background-color: #3366FF; font-family: Andalus; height: 54px; width: 136px;" onclick='window.print()'></td>
            <td align="center">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000099" NavigateUrl="default.aspx">العودة للصفحة الرئيسية</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:Label ID="Label41" runat="server" ForeColor="Red"></asp:Label>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>

