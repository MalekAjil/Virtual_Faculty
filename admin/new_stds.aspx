<%@ Page Title="الطلاب المستجدون" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="new_stds.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:500px;
            text-align:center;
            vertical-align:top;
            background-image: url('../Images/05.gif');
        }
        .auto-style3 {
        text-align:right;  
        }
       
        .auto-style4 {
            height: 55px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="هذه هي طلبات التسجيل الجديدة : "></asp:Label>
                <br />
                <br />
                <table align="center" class="auto-style3" dir="rtl">
                    <tr style="background-color:#555555">
                        <td>
                            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="الرقم الجامعي" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" ForeColor="#FF3300" Text="الاسم" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" ForeColor="#FF3300" Text="الكنية" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" ForeColor="#FF3300" Text="اسم الأب" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" ForeColor="#FF3300" Text="اسم الأم" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" ForeColor="#FF3300" Text="تاريخ الميلاد" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" ForeColor="#FF3300" Text="مكان الولادة" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" ForeColor="#FF3300" Text="الجنس" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" ForeColor="#FF3300" Text="الحالة الاجتماعية" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label11" runat="server" ForeColor="#FF3300" Text="البلد" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" ForeColor="#FF3300" Text="المدينة" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" ForeColor="#FF3300" Text="العنوان" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label14" runat="server" ForeColor="#FF3300" Text="رقم الهاتف" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label15" runat="server" ForeColor="#FF3300" Text="البريد الالكتروني" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label16" runat="server" ForeColor="#FF3300" Text="الشهادة التي يحملها" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label17" runat="server" ForeColor="#FF3300" Text="الاختصاص" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="القسم"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label19" runat="server" ForeColor="#FF3300" Text="الصورة" Font-Bold="True"></asp:Label>
                        </td>

                    </tr>
                    <%
                        database db = new database();
                         try
        {
           
            int s_count = 0;
             db.cn.Open();
            //DataRow dr;

            System.Data.DataTable dt = db.select("select * from student where std_id in (SELECT [std_id]  FROM [dbo].[Std_Log] where [log_active] = 0)  and std_reg_date between GETDATE()-34 and GETDATE()");
            if (dt.Rows.Count != 0)
            {
                
                foreach (System.Data.DataRow dtr in dt.Rows)
                {
                    System.Data.DataTable dtt = db.select("select d_name from department where d_id ="+dtr["std_d_id"]);
                    System.Data.DataRow dr = dtt.Rows[0];
           
                    s_count++;
                    string s = "<tr><td>" + dtr["std_id"].ToString() + "</td><td>" + dtr["std_fname"].ToString() + "</td>" +
                        "<td>" + dtr["std_lname"].ToString() + "</td><td>" + dtr["std_father"].ToString() + "</td>" +
                    "<td>" + dtr["std_mother"].ToString() + "</td><td>" + dtr["std_birth_date"].ToString() + "</td>" +
                    "<td>" + dtr["std_birth_place"].ToString() + "</td><td>"+(Convert.ToBoolean(dtr["std_gender"])?"ذكر":"انثى")+"</td>"+
                    "<td>" + dtr["std_social_status"].ToString() + "</td><td>" + dtr["std_country"].ToString() + "</td>" +
                    "<td>" + dtr["std_city"].ToString() + "</td><td>" + dtr["std_address"].ToString() + "</td>" +
                    "<td>" + dtr["std_phone"].ToString() + "</td><td>" + dtr["std_email"].ToString() + "</td>" +
                    "<td>" + dtr["std_diploma"].ToString() + "</td><td>" + dtr["std_specialization"].ToString() + "</td>" +
                         "<td>" + dr["d_name"] + " </td> <td><img src='../student/" + dtr["std_picture"].ToString() + "' width='50' height='50'/>  </td>" +
                    "<td>  </td></tr> ";
                   // ddlStdNum.Items.Add(new ListItem(dtr["std_fname"].ToString() + " " + dtr["std_lname"].ToString(), dtr["std_id"].ToString()));
                    
                    Response.Write(s);
                    Panel1.Visible = true;
                }
            }
            else
            {
                Label38.Text = " لا يوجد طلاب مستجدين ";
               
            }
        }
        
            catch (Exception ex)
            {
                Label38.Text = ex.Message;
            }
            finally { db.cn.Close(); }
        
    

                         %>
                    <tr>
                        <td colspan="18" class="auto-style4">
                            <asp:Panel ID="Panel1" runat="server" Width="100%" Height="50px" Visible="False">
                                <asp:Label ID="Label20" runat="server" Text="الرجاء ادخال رقم الطالب المراد تفعيل حسابه "></asp:Label>

                                &nbsp;<asp:TextBox ID="txtStdId" runat="server" OnTextChanged="txtStdId_TextChanged" TextMode="Number" onkeypress="CheckNumeric()" />
                                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" BorderColor="#009900" Font-Bold="True" ForeColor="Blue" Height="29px" OnClick="Button1_Click" Text="تفعيل" Width="157px" />

                                &nbsp;&nbsp;

                                <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" BorderColor="#009900" Font-Bold="True" ForeColor="Blue" Height="29px" OnClick="Button2_Click" Text="حذف الطلب" Width="157px" />

                            </asp:Panel>
                        </td>
                    </tr>
                    </table>
                <br />
                <br />
                
                <asp:Label ID="Label38" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="ae_Arab" Font-Size="Large"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

