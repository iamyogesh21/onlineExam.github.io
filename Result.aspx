<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="table-responsive" align="center">

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="UserName" 
            SortExpression="UserName" />
        <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" 
            SortExpression="SubjectName" />
        <asp:BoundField DataField="TestDate" HeaderText="TestDate" 
            SortExpression="TestDate" />
        <asp:BoundField DataField="NumberOfQuestions" HeaderText="NumberOfQuestions" 
            SortExpression="NumberOfQuestions" />
        <asp:BoundField DataField="Marks" HeaderText="Marks" 
            SortExpression="Marks" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
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
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:teststring %>" 
    SelectCommand="SELECT [UserName], [SubjectName], [TestDate], [NumberOfQuestions], [Marks], [Status] FROM [tblResult] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>