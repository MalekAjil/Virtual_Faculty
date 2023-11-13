<%@ Page Title="بيانات المحاضرات" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Lecturs_data.aspx.cs" Inherits="admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
           
            vertical-align:top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />

    <table align="center" class="auto-style2" dir="rtl">
        <tr>
            <td>
              
                <br />
                <asp:Label ID="Label2" runat="server" Text="الرجاء اختيار السنة  "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="31px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="102px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">الأولى</asp:ListItem>
                    <asp:ListItem Value="2">الثانية</asp:ListItem>
                    <asp:ListItem Value="3">الثالثة</asp:ListItem>
                    <asp:ListItem Value="4">الرابعة</asp:ListItem>
                    <asp:ListItem Value="5">الخامسة</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="الرجاء اختيار المادة  "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_name" DataValueField="c_id" AutoPostBack="True" Enabled="False" Height="30px" Width="100px">

                </asp:DropDownList>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="l_id" DataSourceID="SqlDataSource2" Width="100%" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Right">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="l_id" HeaderText="رمز المحاضرة" SortExpression="l_id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="l_num" HeaderText="رقم المحاضرة" SortExpression="l_num" />
                        <asp:BoundField DataField="l_name" HeaderText="اسم المحاضرة" SortExpression="l_name" />
                        <asp:BoundField DataField="l_date" HeaderText="التاريخ" SortExpression="l_date" />
                        <asp:BoundField DataField="l_time" HeaderText="الوقت" SortExpression="l_time" />
                        <asp:BoundField DataField="l_file" HeaderText="مسار ملف الفيديو" SortExpression="l_file" />
                        <asp:BoundField DataField="l_pdf" HeaderText="مسار الكتاب" SortExpression="l_pdf" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br /> 
                </td>
            </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [l_id], [l_num], [l_name], [l_date], [l_time], [l_file], [l_pdf] FROM [Lecture] WHERE ([c_id] = @c_id)" DeleteCommand="DELETE FROM [Lecture] WHERE [l_id] = @l_id" InsertCommand="INSERT INTO [Lecture] ([l_num], [l_name], [l_date], [l_time], [l_file], [l_pdf]) VALUES (@l_num, @l_name, @l_date, @l_time, @l_file, @l_pdf)" UpdateCommand="UPDATE [Lecture] SET [l_num] = @l_num, [l_name] = @l_name, [l_date] = @l_date, [l_time] = @l_time, [l_file] = @l_file, [l_pdf] = @l_pdf WHERE [l_id] = @l_id">
                    <DeleteParameters>
                        <asp:Parameter Name="l_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="l_num" Type="Int32" />
                        <asp:Parameter Name="l_name" Type="String" />
                        <asp:Parameter DbType="Date" Name="l_date" />
                        <asp:Parameter DbType="Time" Name="l_time" />
                        <asp:Parameter Name="l_file" Type="String" />
                        <asp:Parameter Name="l_pdf" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="c_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="l_num" Type="Int32" />
                        <asp:Parameter Name="l_name" Type="String" />
                        <asp:Parameter DbType="Date" Name="l_date" />
                        <asp:Parameter DbType="Time" Name="l_time" />
                        <asp:Parameter Name="l_file" Type="String" />
                        <asp:Parameter Name="l_pdf" Type="String" />
                        <asp:Parameter Name="l_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT [c_id], [c_name] FROM [Course] WHERE ([c_year] = @c_year)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1" Name="c_year" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                
                لإصافة محاضرة جديدة
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/Add_lecture.aspx">اضغط هنا</asp:HyperLink>
                </td>
            
        </tr>
    </table>

</asp:Content>

