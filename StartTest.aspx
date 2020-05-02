<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StartTest.aspx.cs" Inherits="StartTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
   <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="SubjectName"
                        Width="100%"
                        onselectedindexchanged="DataList1_SelectedIndexChanged" 
                         BorderColor="#3399FF" CellPadding="5" CellSpacing="3" GridLines="Both" 
                         Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                         Font-Strikeout="False" Font-Underline="False">
        <AlternatingItemStyle BackColor="#CCCCCC" Font-Bold="False" Font-Italic="False" 
                             Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                             ForeColor="White" />
        <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                             Font-Size="Large" Font-Strikeout="False" Font-Underline="False" 
                             ForeColor="#999999" HorizontalAlign="Left" />
        <HeaderTemplate>
                             Subject Name
                         </HeaderTemplate>
        <ItemStyle BackColor="Gray" Font-Bold="False" Font-Italic="False" 
                             Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <ItemTemplate>
            <div style="text-decoration:none; width:auto">
                <asp:LinkButton ID="CategoryNameLabel" runat="server" CommandName="select" CssClass="textdecor" 
                                Text='<%# Eval("SubjectName") %>'  />
            </div>
        </ItemTemplate>
        <SelectedItemStyle Font-Bold="True" BackColor="#39759B" Font-Italic="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                             ForeColor="White" />
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                             Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
    </asp:DataList>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:teststring %>" 
                        SelectCommand="SELECT [SubjectName] FROM [tblSubject]">
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>