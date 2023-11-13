<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student_master.master" AutoEventWireup="true" CodeFile="LecturePdf.aspx.cs" Inherits="Student_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                                   <center>
<object  ID="Object1" width="100%" height="700">
  <param name="pdf" value="../<%Response.Write(Request["l_pdf"]); %>" />
  <embed src="../<%Response.Write(Request["l_pdf"]); %>"   name="pdf" ></embed>
    </center>
</object>
</center>
</asp:Content>

