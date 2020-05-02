<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="table-responsive" align="center">
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
    AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ResultId" HeaderText="ResultId" 
                SortExpression="ResultId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
                SortExpression="SubjectName" />
            <asp:BoundField DataField="TestDate" HeaderText="TestDate" 
                SortExpression="TestDate" />
            <asp:BoundField DataField="NumberOfQuestions" HeaderText="NumberOfQuestions" 
                SortExpression="NumberOfQuestions" />
            <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView></div>
    <br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:teststring %>" SelectCommand="SELECT * FROM [tblResult]">
</asp:SqlDataSource>
</asp:Content>