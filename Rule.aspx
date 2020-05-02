<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rule.aspx.cs" Inherits="Rule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />

     <div class="container">
<br />
<h1>Rules for Exam: </h1>
<br /><hr />
<h2>Exam:</h2>
<ul>
<li>All questions are Compulsary</li>.<br />
<li>Before Starting Exam you should see Subject</li>.<br />
<li>There is no negative marking</li>.<br />
</ul>
<br />
    <table class="style11" align="center">
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Skilltest.aspx">Start Exam</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />    
        </div>
</asp:Content>