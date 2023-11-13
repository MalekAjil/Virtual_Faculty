<%@ Page Title="بيانات المدرسين" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="teachers_data.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:500px;
            background-image: url('../Images/05.gif');
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" DeleteCommand="DELETE FROM [Teacher] WHERE [t_id] = @t_id" InsertCommand="INSERT INTO [Teacher] ([t_fname], [t_lname], [t_father], [t_mother], [t_birth_date], [t_birth_place], [t_gender], [t_social_status], [t_diploma], [t_specialization], [t_email], [t_phone], [t_log_name], [t_log_pass], [t_picture]) VALUES (@t_fname, @t_lname, @t_father, @t_mother, @t_birth_date, @t_birth_place, @t_gender, @t_social_status, @t_diploma, @t_specialization, @t_email, @t_phone, @t_log_name, @t_log_pass, @t_picture)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [t_fname] = @t_fname, [t_lname] = @t_lname, [t_father] = @t_father, [t_mother] = @t_mother, [t_birth_date] = @t_birth_date, [t_birth_place] = @t_birth_place, [t_gender] = @t_gender, [t_social_status] = @t_social_status, [t_diploma] = @t_diploma, [t_specialization] = @t_specialization, [t_email] = @t_email, [t_phone] = @t_phone, [t_log_name] = @t_log_name, [t_log_pass] = @t_log_pass, [t_picture] = @t_picture WHERE [t_id] = @t_id">
                    <DeleteParameters>
                        <asp:Parameter Name="t_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="t_fname" Type="String" />
                        <asp:Parameter Name="t_lname" Type="String" />
                        <asp:Parameter Name="t_father" Type="String" />
                        <asp:Parameter Name="t_mother" Type="String" />
                        <asp:Parameter DbType="Date" Name="t_birth_date" />
                        <asp:Parameter Name="t_birth_place" Type="String" />
                        <asp:Parameter Name="t_gender" Type="Boolean" />
                        <asp:Parameter Name="t_social_status" Type="String" />
                        <asp:Parameter Name="t_diploma" Type="String" />
                        <asp:Parameter Name="t_specialization" Type="String" />
                        <asp:Parameter Name="t_email" Type="String" />
                        <asp:Parameter Name="t_phone" Type="String" />
                        <asp:Parameter Name="t_log_name" Type="String" />
                        <asp:Parameter Name="t_log_pass" Type="String" />
                        <asp:Parameter Name="t_picture" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="t_fname" Type="String" />
                        <asp:Parameter Name="t_lname" Type="String" />
                        <asp:Parameter Name="t_father" Type="String" />
                        <asp:Parameter Name="t_mother" Type="String" />
                        <asp:Parameter DbType="Date" Name="t_birth_date" />
                        <asp:Parameter Name="t_birth_place" Type="String" />
                        <asp:Parameter Name="t_gender" Type="Boolean" />
                        <asp:Parameter Name="t_social_status" Type="String" />
                        <asp:Parameter Name="t_diploma" Type="String" />
                        <asp:Parameter Name="t_specialization" Type="String" />
                        <asp:Parameter Name="t_email" Type="String" />
                        <asp:Parameter Name="t_phone" Type="String" />
                        <asp:Parameter Name="t_log_name" Type="String" />
                        <asp:Parameter Name="t_log_pass" Type="String" />
                        <asp:Parameter Name="t_picture" Type="String" />
                        <asp:Parameter Name="t_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackImageUrl="~/Images/05.gif" CellPadding="4" DataKeyNames="t_id" DataSourceID="SqlDataSource1" GridLines="None" HorizontalAlign="Center" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="t_id" HeaderText="الرقم" InsertVisible="False" ReadOnly="True" SortExpression="t_id" />
                        <asp:BoundField DataField="t_fname" HeaderText="الاسم" SortExpression="t_fname" />
                        <asp:BoundField DataField="t_lname" HeaderText="الكنية" SortExpression="t_lname" />
                        <asp:BoundField DataField="t_father" HeaderText="الاب" SortExpression="t_father" />
                        <asp:BoundField DataField="t_mother" HeaderText="الام" SortExpression="t_mother" />
                        <asp:BoundField DataField="t_birth_date" HeaderText="تاريخ الميلاد" SortExpression="t_birth_date" />
                        <asp:BoundField DataField="t_birth_place" HeaderText="مكان الولادة" SortExpression="t_birth_place" />
                        <asp:CheckBoxField DataField="t_gender" HeaderText="الجنس" SortExpression="t_gender" />
                        <asp:BoundField DataField="t_social_status" HeaderText="الحالة الاجتماعية" SortExpression="t_social_status" />
                        <asp:BoundField DataField="t_diploma" HeaderText="المؤهل العلمي" SortExpression="t_diploma" />
                        <asp:BoundField DataField="t_specialization" HeaderText="الاختصاص" SortExpression="t_specialization" />
                        <asp:BoundField DataField="t_email" HeaderText="الايميل" SortExpression="t_email" />
                        <asp:BoundField DataField="t_phone" HeaderText="رقم الهاتف" SortExpression="t_phone" />
                        <asp:BoundField DataField="t_log_name" HeaderText="اسم المستخدم" SortExpression="t_log_name" />
                        <asp:BoundField DataField="t_log_pass" HeaderText="كلمة المرور" SortExpression="t_log_pass" />
                        <asp:TemplateField HeaderText="الصورة الشخصية" SortExpression="t_picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("t_picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="<%# 75 %>" ImageUrl='<%# Eval("t_picture", "../teacher/{0}") %>' Width="<%# 75 %>" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" />
                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" Width="100%" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                لاضافة مدرس جديد اضغط هنا  <a href="Add_teacher.aspx" target="_blank"><img src="../Images/GIF/word98.gif" alt="new" /></a>
            </td>

        </tr>
    </table>
</asp:Content>

