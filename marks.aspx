<%@ Page Title="" Language="C#" MasterPageFile="~/webMaster.master" AutoEventWireup="true" CodeFile="marks.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

  <script type="text/javascript">
 

      function CheckNumeric() {
 

          if ((event.keyCode < 48 || event.keyCode > 57)) {
 

              event.returnValue = false;
 

          }
 

      }
 

      </script>

     <style type="text/css">
        .auto-style2 {
            width: 100%;
           
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 50%;
            border-collapse: collapse;
            border: 3px solid #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" class="auto-style2" dir="rtl">
            <tr>
                <td class="auto-style3">

                    <asp:Panel ID="Panel1" runat="server" DefaultButton="Button1">
                        <table align='center' class='auto-style4' dir='rtl'>
                            <tr>
                                <td style="font-weight: bold">

                                    الرجاء ادخل رقم الطالب :

                                </td>
                                <td>

                                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" onkeypress="CheckNumeric()" />

                                </td>
                                                                            </tr>
                            <tr>
                                <td colspan="2">
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="إظهار"  Width="100%" Font-Bold="True" ForeColor="Lime" OnClick="Button1_Click"/>
                                    <br />
                                </td>
                            </tr>
                            </table>
                    </asp:Panel>

                    </td>
                </tr>
        
            <tr>
                <td><asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table align="center" style="text-align:center;">
                        <tr>
                            <td>
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                        <tr>
                            <td style="color: #FF0000; font-weight: bold; text-decoration: underline">
                                <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="c_name" HeaderText="اسم المادة" SortExpression="c_name" />
                            <asp:BoundField DataField="c_year" HeaderText="السنة الدراسية" SortExpression="c_year" />
                            <asp:BoundField DataField="std_mark" HeaderText="العلامة" SortExpression="std_mark" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VIFacultyConnectionString %>" SelectCommand="SELECT Course.c_name, Course.c_year, Std_Crs.std_mark FROM Course INNER JOIN Std_Crs ON Course.c_id = Std_Crs.c_id WHERE (std_crs.[std_id] = @std_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox1" Name="std_id" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                <br />
                                <br />
                                ملاحظة:
                                العلامة صفر قد تدل أنك لم تقدم هذه المادة بعد
                                <br />
                                
                
                            </td>
                        </tr>
                    </table></asp:Panel>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label3" runat="server"  Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        
        </table>
      
</asp:Content>

