<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
<div class="table-responsive" align="center">

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333">
          <AlternatingRowStyle BackColor="White" />
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
          <EditRowStyle BackColor="#7C6F57" />
          <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#06ad1b" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#E3EAEB" />
          <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F8FAFA" />
          <SortedAscendingHeaderStyle BackColor="#246B61" />
          <SortedDescendingCellStyle BackColor="#D4DFE1" />
          <SortedDescendingHeaderStyle BackColor="#15524A" />
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
