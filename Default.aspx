<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <hr />
        <br />
        <br />
          <br />
    <div style = "background-position: left; background-image : url('Images/log.jpg'); background-repeat :no-repeat"> 
        <br />
          <br />
        <table align="right" style="width: 419px; height: 142px">
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    <asp:Label ID="Label3" runat="server" Font-Size="19px" ForeColor="#2A76A8" 
                        Text="Account Login"></asp:Label>
                </td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td>

                    &nbsp;</td>
                <td>

                    &nbsp;</td>
                <td colspan="2">

                    &nbsp;</td>
                <td>

                    &nbsp;</td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">

                    &nbsp;</td>
                <td align="right">

                    <asp:Label ID="Label1" runat="server" Font-Names="Microsoft Sans Serif" 
                        Font-Size="10pt" Text="User Name :"></asp:Label>
                </td>
                <td colspan="2">

                    &nbsp;</td>
                <td>

                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Enter UserName" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">

                    &nbsp;</td>
                <td  align="right">

                    &nbsp;</td>
                <td  colspan="2">

                    &nbsp;</td>
                <td >

                    &nbsp;</td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
                <td  align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="right" colspan="2" nowrap="nowrap">

                    <asp:Label ID="Label2" runat="server" Font-Names="Microsoft Sans Serif" 
                        Font-Size="10pt" Text="Password :"></asp:Label>

                </td>
                <td align="left" colspan="2">

                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td colspan="2">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter Password" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="2">

                    <asp:LinkButton ID="lnkForgot" CssClass="textdecor" runat="server" 
                        onclick="lnkForgot_Click" ForeColor="#2A75A8" CausesValidation="False">Forgot Password</asp:LinkButton>

                </td>
                <td align="center" colspan="2">
                     <asp:Button ID="btnSignin" runat="server" Text="Submit" class="btn btn-primary btn-lg px-5" OnClick="btnSign_Click"/>
                </td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    <asp:Label ID="lblComments" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            </table>
           <br />
     <br />
     <br />
          <br />
          <br />
          <br />
           <br />
     <br />
        <br />
        <br />
        <br />
          <br />
          </div>
</asp:Content>

