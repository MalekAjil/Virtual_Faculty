<%@ Page Title="بيانات الأخبار" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="News_data.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" style="width:100%; height:500px;" dir="rtl">
        <tr>
            <td>

            
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="n_id" DataSourceID="SqlDataSource1" Height="50px" Width="80%">
        <Fields>
            <asp:BoundField DataField="n_date" HeaderText="التاريخ" SortExpression="n_date" />
            <asp:BoundField DataField="n_job" HeaderText="أخبار العمل" SortExpression="n_job" />
            <asp:BoundField DataField="n_job_details" HeaderText="تفاصيل العمل" SortExpression="n_job_details" />
            <asp:BoundField DataField="n_solution" HeaderText="أخبار الحلول" SortExpression="n_solution" />
            <asp:BoundField DataField="n_sol_details" HeaderText="تفاصيل الحلول" SortExpression="n_sol_details" />
            <asp:BoundField DataField="n_mark" HeaderText="أخبار العلامات" SortExpression="n_mark" />
            <asp:BoundField DataField="n_mark_details" HeaderText="تفاصيل العلامات" SortExpression="n_mark_details" />
            <asp:BoundField DataField="n_facebook" HeaderText="اخبار فيس بوك" SortExpression="n_facebook" />
            <asp:BoundField DataField="n_face_details" HeaderText="تفاصيل فيس بوك" SortExpression="n_face_details" />
            <asp:BoundField DataField="n_std" HeaderText="أخبار الطلبة الجدد" SortExpression="n_std" />
            <asp:BoundField DataField="n_std_details" HeaderText="تفاصيل لطلبة" SortExpression="n_std_details" />
            <asp:BoundField DataField="n_other" HeaderText="أخبار أخرى" SortExpression="n_other" />
            <asp:BoundField DataField="n_job_pic" HeaderText="مسار صورة العمل" SortExpression="n_job_pic" />
            <asp:BoundField DataField="n_sol_pic" HeaderText="مسار صورة الحلول" SortExpression="n_sol_pic" />
            <asp:BoundField DataField="n_mark_pic" HeaderText="مسار صورة العلامات" SortExpression="n_mark_pic" />
            <asp:BoundField DataField="n_face_pic" HeaderText="مسار صورة الفيس" SortExpression="n_face_pic" />
            <asp:BoundField DataField="n_std_pic" HeaderText="مسار صورة الطالب" SortExpression="n_std_pic" />
            <asp:CheckBoxField DataField="arabic" HeaderText="عربي" SortExpression="arabic" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" DeleteCommand="DELETE FROM [News] WHERE [n_id] = @n_id" InsertCommand="INSERT INTO [News] ([n_id], [n_date], [n_job], [n_job_details], [n_solution], [n_sol_details], [n_mark], [n_mark_details], [n_facebook], [n_face_details], [n_std], [n_std_details], [n_other], [n_job_pic], [n_sol_pic], [n_mark_pic], [n_face_pic], [n_std_pic], [arabic]) VALUES (@n_id, @n_date, @n_job, @n_job_details, @n_solution, @n_sol_details, @n_mark, @n_mark_details, @n_facebook, @n_face_details, @n_std, @n_std_details, @n_other, @n_job_pic, @n_sol_pic, @n_mark_pic, @n_face_pic, @n_std_pic, @arabic)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [n_date] = @n_date, [n_job] = @n_job, [n_job_details] = @n_job_details, [n_solution] = @n_solution, [n_sol_details] = @n_sol_details, [n_mark] = @n_mark, [n_mark_details] = @n_mark_details, [n_facebook] = @n_facebook, [n_face_details] = @n_face_details, [n_std] = @n_std, [n_std_details] = @n_std_details, [n_other] = @n_other, [n_job_pic] = @n_job_pic, [n_sol_pic] = @n_sol_pic, [n_mark_pic] = @n_mark_pic, [n_face_pic] = @n_face_pic, [n_std_pic] = @n_std_pic, [arabic] = @arabic WHERE [n_id] = @n_id">
        <DeleteParameters>
            <asp:Parameter Name="n_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="n_id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="n_date" />
            <asp:Parameter Name="n_job" Type="String" />
            <asp:Parameter Name="n_job_details" Type="String" />
            <asp:Parameter Name="n_solution" Type="String" />
            <asp:Parameter Name="n_sol_details" Type="String" />
            <asp:Parameter Name="n_mark" Type="String" />
            <asp:Parameter Name="n_mark_details" Type="String" />
            <asp:Parameter Name="n_facebook" Type="String" />
            <asp:Parameter Name="n_face_details" Type="String" />
            <asp:Parameter Name="n_std" Type="String" />
            <asp:Parameter Name="n_std_details" Type="String" />
            <asp:Parameter Name="n_other" Type="String" />
            <asp:Parameter Name="n_job_pic" Type="String" />
            <asp:Parameter Name="n_sol_pic" Type="String" />
            <asp:Parameter Name="n_mark_pic" Type="String" />
            <asp:Parameter Name="n_face_pic" Type="String" />
            <asp:Parameter Name="n_std_pic" Type="String" />
            <asp:Parameter Name="arabic" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="n_date" />
            <asp:Parameter Name="n_job" Type="String" />
            <asp:Parameter Name="n_job_details" Type="String" />
            <asp:Parameter Name="n_solution" Type="String" />
            <asp:Parameter Name="n_sol_details" Type="String" />
            <asp:Parameter Name="n_mark" Type="String" />
            <asp:Parameter Name="n_mark_details" Type="String" />
            <asp:Parameter Name="n_facebook" Type="String" />
            <asp:Parameter Name="n_face_details" Type="String" />
            <asp:Parameter Name="n_std" Type="String" />
            <asp:Parameter Name="n_std_details" Type="String" />
            <asp:Parameter Name="n_other" Type="String" />
            <asp:Parameter Name="n_job_pic" Type="String" />
            <asp:Parameter Name="n_sol_pic" Type="String" />
            <asp:Parameter Name="n_mark_pic" Type="String" />
            <asp:Parameter Name="n_face_pic" Type="String" />
            <asp:Parameter Name="n_std_pic" Type="String" />
            <asp:Parameter Name="arabic" Type="Boolean" />
            <asp:Parameter Name="n_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                </td>
        </tr>
    </table>
</asp:Content>

