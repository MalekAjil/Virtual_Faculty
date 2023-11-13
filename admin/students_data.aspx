<%@ Page Title="بيانات الطلاب" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="students_data.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td align="right">
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" GroupName="r1" ForeColor="Blue" Text="اظهار بيانات كل الطلاب" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="البحث بالرقم" AutoPostBack="True"  GroupName="r1" ForeColor="#003300" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Enabled="False">
                <table dir="rtl" align="right">
                    <tr>
                        <td>

                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="الرقم الجامعي : "></asp:Label>

                        </td>
                        <td>

                            <asp:TextBox ID="txtID" runat="server" onkeypress="CheckNumeric()" />

                        </td>
                        <td>

                            <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="بــحـــث" Width="171px" />

                        </td>
                       
                    </tr>

                </table>
                    </asp:Panel>
                </td>
            </tr>
        <tr>
            <td align="right">
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" Text="البحث بالاسم" GroupName="r1" ForeColor="#660066" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server" DefaultButton="Button2" Enabled="False">
                <table dir="rtl" style="width:60%" align="right" >
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="الاسم : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="الكنية : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>

                <asp:Label ID="Label4" runat="server" Text="اسم الأب : "></asp:Label>

                        </td>
                        <td>

                            <asp:TextBox ID="txtFather" runat="server"></asp:TextBox>

                        </td>
                        <td>

                <asp:Label ID="Label5" runat="server" Text="اسم الأم : "></asp:Label>

                        </td>
                        <td>

                <asp:TextBox ID="txtMother" runat="server"></asp:TextBox>

                        </td>

                    </tr>

                    <tr>
                        <td colspan="4">

                            <asp:Button ID="Button2" runat="server" Height="31px" OnClick="Button2_Click" Text="بــحـــث" Width="170px" />

                        </td>

                    </tr>
                     
                </table>
                     </asp:Panel>         
&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="StdDataSource" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="std_id" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="std_id" HeaderText="الرقم" InsertVisible="False" ReadOnly="True" SortExpression="std_id" />
                        <asp:TemplateField HeaderText="القسم" SortExpression="std_d_id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("std_d_id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="deptDataSource" DataTextField="d_name" DataValueField="d_id" SelectedValue='<%# Bind("std_d_id") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="deptDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [d_id], [d_name] FROM [Department]"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="std_fname" HeaderText="الاسم" SortExpression="std_fname" />
                        <asp:BoundField DataField="std_lname" HeaderText="الكنية" SortExpression="std_lname" />
                        <asp:BoundField DataField="std_father" HeaderText="الاب" SortExpression="std_father" />
                        <asp:BoundField DataField="std_mother" HeaderText="الام" SortExpression="std_mother" />
                        <asp:BoundField DataField="std_birth_date" HeaderText="تاريخ الولادة" SortExpression="std_birth_date" />
                        <asp:BoundField DataField="std_birth_place" HeaderText="مكان الولادة" SortExpression="std_birth_place" />
                        <asp:CheckBoxField DataField="std_gender" HeaderText="الجنس" SortExpression="std_gender" />
                        <asp:BoundField DataField="std_social_status" HeaderText="الحالة الاجتماعية" SortExpression="std_social_status" />
                        <asp:BoundField DataField="std_diploma" HeaderText="الشهادة التي يحملها" SortExpression="std_diploma" />
                        <asp:BoundField DataField="std_specialization" HeaderText="الاختصاص" SortExpression="std_specialization" />
                        <asp:BoundField DataField="std_email" HeaderText="الايميل" SortExpression="std_email" />
                        <asp:BoundField DataField="std_phone" HeaderText="رقم الهاتف" SortExpression="std_phone" />
                        <asp:BoundField DataField="std_country" HeaderText="البلد" SortExpression="std_country" />
                        <asp:BoundField DataField="std_city" HeaderText="المدينة" SortExpression="std_city" />
                        <asp:BoundField DataField="std_address" HeaderText="العنوان" SortExpression="std_address" />
                        <asp:BoundField DataField="std_reg_date" HeaderText="تاريخ التسجيل" SortExpression="std_reg_date" />
                        <asp:BoundField DataField="std_year" HeaderText="السنة الدراسية" SortExpression="std_year" />
                        <asp:BoundField DataField="std_remains_sub" HeaderText="المواد المتبقية" SortExpression="std_remains_sub" />
                        <asp:TemplateField HeaderText="الصورة الشخصية" SortExpression="std_picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("std_picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="<%# 100 %>" ImageUrl='<%# Eval("std_picture", "../student/{0}") %>' Width="<%# 100 %>" />
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
                <asp:SqlDataSource ID="StdDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [std_id] = @std_id" InsertCommand="INSERT INTO [Student] ([std_d_id], [std_fname], [std_lname], [std_father], [std_mother], [std_birth_date], [std_birth_place], [std_gender], [std_social_status], [std_diploma], [std_specialization], [std_email], [std_phone], [std_country], [std_city], [std_address], [std_reg_date], [std_year], [std_remains_sub], [std_picture]) VALUES (@std_d_id, @std_fname, @std_lname, @std_father, @std_mother, @std_birth_date, @std_birth_place, @std_gender, @std_social_status, @std_diploma, @std_specialization, @std_email, @std_phone, @std_country, @std_city, @std_address, @std_reg_date, @std_year, @std_remains_sub, @std_picture)" SelectCommand="SELECT * FROM [Student] WHERE (([std_lname] LIKE '%' + @std_lname + '%') AND ([std_fname] LIKE '%' + @std_fname + '%') AND ([std_father] LIKE '%' + @std_father + '%') AND ([std_mother] LIKE '%' + @std_mother + '%'))" UpdateCommand="UPDATE [Student] SET [std_d_id] = @std_d_id, [std_fname] = @std_fname, [std_lname] = @std_lname, [std_father] = @std_father, [std_mother] = @std_mother, [std_birth_date] = @std_birth_date, [std_birth_place] = @std_birth_place, [std_gender] = @std_gender, [std_social_status] = @std_social_status, [std_diploma] = @std_diploma, [std_specialization] = @std_specialization, [std_email] = @std_email, [std_phone] = @std_phone, [std_country] = @std_country, [std_city] = @std_city, [std_address] = @std_address, [std_reg_date] = @std_reg_date, [std_year] = @std_year, [std_remains_sub] = @std_remains_sub, [std_picture] = @std_picture WHERE [std_id] = @std_id">
                    <DeleteParameters>
                        <asp:Parameter Name="std_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="std_d_id" Type="Int32" />
                        <asp:Parameter Name="std_fname" Type="String" />
                        <asp:Parameter Name="std_lname" Type="String" />
                        <asp:Parameter Name="std_father" Type="String" />
                        <asp:Parameter Name="std_mother" Type="String" />
                        <asp:Parameter DbType="Date" Name="std_birth_date" />
                        <asp:Parameter Name="std_birth_place" Type="String" />
                        <asp:Parameter Name="std_gender" Type="Boolean" />
                        <asp:Parameter Name="std_social_status" Type="String" />
                        <asp:Parameter Name="std_diploma" Type="String" />
                        <asp:Parameter Name="std_specialization" Type="String" />
                        <asp:Parameter Name="std_email" Type="String" />
                        <asp:Parameter Name="std_phone" Type="String" />
                        <asp:Parameter Name="std_country" Type="String" />
                        <asp:Parameter Name="std_city" Type="String" />
                        <asp:Parameter Name="std_address" Type="String" />
                        <asp:Parameter DbType="Date" Name="std_reg_date" />
                        <asp:Parameter Name="std_year" Type="Int32" />
                        <asp:Parameter Name="std_remains_sub" Type="Int32" />
                        <asp:Parameter Name="std_picture" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtLname" DefaultValue="%" Name="std_lname" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtFname" DefaultValue="%" Name="std_fname" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtFather" DefaultValue="%" Name="std_father" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtMother" DefaultValue="%" Name="std_mother" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="std_d_id" Type="Int32" />
                        <asp:Parameter Name="std_fname" Type="String" />
                        <asp:Parameter Name="std_lname" Type="String" />
                        <asp:Parameter Name="std_father" Type="String" />
                        <asp:Parameter Name="std_mother" Type="String" />
                        <asp:Parameter DbType="Date" Name="std_birth_date" />
                        <asp:Parameter Name="std_birth_place" Type="String" />
                        <asp:Parameter Name="std_gender" Type="Boolean" />
                        <asp:Parameter Name="std_social_status" Type="String" />
                        <asp:Parameter Name="std_diploma" Type="String" />
                        <asp:Parameter Name="std_specialization" Type="String" />
                        <asp:Parameter Name="std_email" Type="String" />
                        <asp:Parameter Name="std_phone" Type="String" />
                        <asp:Parameter Name="std_country" Type="String" />
                        <asp:Parameter Name="std_city" Type="String" />
                        <asp:Parameter Name="std_address" Type="String" />
                        <asp:Parameter DbType="Date" Name="std_reg_date" />
                        <asp:Parameter Name="std_year" Type="Int32" />
                        <asp:Parameter Name="std_remains_sub" Type="Int32" />
                        <asp:Parameter Name="std_picture" Type="String" />
                        <asp:Parameter Name="std_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr><td>

                لاضافة طالب جديد اضغط هنا  <a href="Add_student.aspx" target="_blank"><img src="../Images/GIF/word98.gif" alt="new" style="height: 31px; width: 126px" /></a>
            
            </td></tr>
    </table>
</asp:Content>

