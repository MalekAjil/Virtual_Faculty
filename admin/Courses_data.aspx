<%@ Page Title="بيانات المواد" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Courses_data.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height:500px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td>&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="crsDataSource" CaptionAlign="Right" CellPadding="4" ForeColor="#333333" GridLines="None" Height="365px" HorizontalAlign="Center" Width="719px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="c_id" HeaderText="رقم المادة" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
            <asp:BoundField DataField="c_name" HeaderText="اسم المادة" SortExpression="c_name" />
            <asp:BoundField DataField="c_year" HeaderText="السنة" SortExpression="c_year" />
            <asp:BoundField DataField="c_season" HeaderText="الفصل" SortExpression="c_season" />
            <asp:TemplateField HeaderText="المدرس" SortExpression="t_id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("t_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="tchrDataSource" DataTextField="t_name" DataValueField="t_id" SelectedValue='<%# Bind("t_id") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="tchrDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT t_id, t_fname+' '+ t_lname as t_name FROM Teacher"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="القسم" SortExpression="dept_id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dept_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="deptDataSource" DataTextField="d_name" DataValueField="d_id" SelectedValue='<%# Bind("dept_id") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="deptDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [d_id], [d_name] FROM [Department]"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="c_price" HeaderText="السعر" SortExpression="c_price" />
            <asp:BoundField DataField="c_notes" HeaderText="معلومات" SortExpression="c_notes" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
                <asp:SqlDataSource ID="crsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [Course] ([c_name], [c_year], [c_season], [t_id], [dept_id], [c_price], [c_notes]) VALUES (@c_name, @c_year, @c_season, @t_id, @dept_id, @c_price, @c_notes)" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [c_name] = @c_name, [c_year] = @c_year, [c_season] = @c_season, [t_id] = @t_id, [dept_id] = @dept_id, [c_price] = @c_price, [c_notes] = @c_notes WHERE [c_id] = @c_id">
                    <DeleteParameters>
                        <asp:Parameter Name="c_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="c_name" Type="String" />
                        <asp:Parameter Name="c_year" Type="Int32" />
                        <asp:Parameter Name="c_season" Type="String" />
                        <asp:Parameter Name="t_id" Type="Int32" />
                        <asp:Parameter Name="dept_id" Type="Int32" />
                        <asp:Parameter Name="c_price" Type="Int32" />
                        <asp:Parameter Name="c_notes" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="c_name" Type="String" />
                        <asp:Parameter Name="c_year" Type="Int32" />
                        <asp:Parameter Name="c_season" Type="String" />
                        <asp:Parameter Name="t_id" Type="Int32" />
                        <asp:Parameter Name="dept_id" Type="Int32" />
                        <asp:Parameter Name="c_price" Type="Int32" />
                        <asp:Parameter Name="c_notes" Type="String" />
                        <asp:Parameter Name="c_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                لإصافة مادة جديدة
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Add_course.aspx">اضغط هنا</asp:HyperLink>
                </td>
        </tr>
    </table>
</asp:Content>

