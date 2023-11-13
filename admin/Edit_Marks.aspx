<%@ Page Title="العلامات" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Edit_Marks.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            text-align:center;
        }
        .auto-style3 {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  
        <table align="center" class="auto-style2" dir="rtl">
            <tr>
                <td class="auto-style3">

                <asp:Label ID="Label2" runat="server" Text="الرجاء اختيار السنة  "></asp:Label>
                    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" Height="31px"  Width="102px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">الأولى</asp:ListItem>
                    <asp:ListItem Value="2">الثانية</asp:ListItem>
                    <asp:ListItem Value="3">الثالثة</asp:ListItem>
                    <asp:ListItem Value="4">الرابعة</asp:ListItem>
                    <asp:ListItem Value="5">الخامسة</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="الرجاء اختيار المادة  "></asp:Label>
                    <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_name" DataValueField="c_id" AutoPostBack="True" Enabled="False" Height="30px" Width="100px" >
                </asp:DropDownList>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; اختر الطلاب الذين تريد عرض أو تعديل علاماتهم
                    <asp:DropDownList ID="ddlFilter" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFilter_SelectedIndexChanged">
                        <asp:ListItem Value="all">الكل</asp:ListItem>
                        <asp:ListItem Value="&lt;60">الراسبون</asp:ListItem>
                        <asp:ListItem Value="&gt;60">الناجحون</asp:ListItem>
                    </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [c_id], [c_name] FROM [Course] WHERE ([c_year] = @c_year)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlYear" DefaultValue="1" Name="c_year" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                    </td>
                </tr>
            <tr>
                <td>
                    <%
/*                        db = new database();
                        string cond1, cond2 = "";
                        switch (ddlFilter.SelectedIndex)
                        {
                            case 0: cond2 = ""; break;
                            case 1: cond2 = " and std_crs.std_mark<60"; break;
                            case 2: cond2 = " and std_crs.std_mark>=60"; break;

                        }
                        if (ddlCourse.SelectedIndex != -1)
                        {
                            cond1 = "where std_crs.c_id=" + ddlCourse.SelectedItem.Value;
                            string sql = "select student.std_id,student.std_fname +' '+ student.std_father +' '+student.std_lname as student_name,std_crs.std_mark from student left outer join std_crs on std_crs.std_id=student.std_id " + cond1 + cond2;
                            try
                            {
                                db.cn.Open();
                                System.Data.DataTable dt = db.select(sql);
                                if (dt.Rows.Count != 0)
                                {
                                    Response.Write(" <table align='center' class='auto-style4' dir='rtl'><tr style='background-color:#d3c8c8'><td>رقم الطالب</td><td>اسم الطالب</td><td>العلامة</td></tr>");
                                    foreach (System.Data.DataRow dr in dt.Rows)
                                    {
                                        Response.Write(string.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>",dr[0].ToString(),dr[1].ToString(),dr[2].ToString()));
                                    }

                                    Response.Write("</table>");
                                    
                                    
                                    Label3.Text =  "عدد الطلاب : "+dt.Rows.Count ;
                                   
                                }
                                else
                                {
                                    Label3.Text = "لا يوجد طلاب !!";
                                }
                            }
                            catch (Exception ex)
                            {
                                Label3.Text = ex.Message;
                            }
                        }
 * */%>
                   

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="std_id" DataSourceID="MarksDataSource" GridLines="Horizontal" OnRowCreated="GridView1_RowCreated">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="std_id" HeaderText="رقم الطالب" InsertVisible="False" ReadOnly="True" SortExpression="std_id" />
                            <asp:BoundField DataField="std_name" HeaderText="اسم الطالب" ReadOnly="True" SortExpression="std_name" />
                            <asp:TemplateField HeaderText="العلامة" SortExpression="std_mark">
                                <EditItemTemplate>
                                    <asp:TextBox ID="tb" runat="server" Text='<%# Bind("std_mark") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="tb" runat="server" Text='<%# Bind("std_mark") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="MarksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT Student.std_id, Student.std_fname + ' ' + Student.std_father + ' ' + Student.std_lname AS std_name, Std_Crs.std_mark FROM Std_Crs INNER JOIN Student ON Std_Crs.std_id = Student.std_id WHERE (Std_Crs.c_id = @c_id)" UpdateCommand="update std_crs set std_mark=@std_mark where std_id=@std_id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlFilter" Name="std_mark" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="ddlCourse" Name="c_id" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="std_mark" Type="Int32" />
                            <asp:Parameter Name="std_id" Type="Int32"  />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                   

                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="تحديث" Enabled="False" />
                   

                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/GIF/word104.gif" Visible="False" />
                   

                </td>
            </tr>
            <tr>
                <td>
                 <center>   <asp:Label ID="Label3" runat="server"  Font-Bold="True" ForeColor="Red"></asp:Label><br />
                        <asp:Label ID="lblMsg" runat="server"  Font-Bold="True" ForeColor="Red"></asp:Label>
                    </center>
                </td>
            </tr>
        </table>
        <br />

</asp:Content>

