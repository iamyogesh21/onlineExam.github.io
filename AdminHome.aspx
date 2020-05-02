<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div align="center">
    <table>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Select Question"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td colspan="1">
            <asp:DropDownList ID="ddlSubject" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="SubjectName" DataValueField="SubjectName">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Question Number"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            <asp:Label ID="lblSno" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td >
            &nbsp;</td>
        <td>
            <asp:Label ID="lblQuestion" runat="server" Text="Question"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" 
                ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQuestion" 
                    ErrorMessage="*" ID="RequiredFieldValidator2" ForeColor="Red"></asp:RequiredFieldValidator></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Option A"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            <asp:TextBox ID="txtAnswera" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtAnswera" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Option B"></asp:Label>
        </td>
        <td >
            &nbsp;</td>
        <td colspan="2">
            <asp:TextBox ID="txtAnswerb" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAnswerb" 
                    ErrorMessage="*" ID="RequiredFieldValidator4" ForeColor="Red"></asp:RequiredFieldValidator></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td >
            <asp:Label ID="Label4" runat="server" Text="Option C"></asp:Label>
        </td>
        <td >
            &nbsp;</td>
        <td  colspan="2">
            <asp:TextBox ID="txtAnswerc" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAnswerc" 
                    ErrorMessage="*" ID="RequiredFieldValidator5" ForeColor="Red"></asp:RequiredFieldValidator></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Option D"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            <asp:TextBox ID="txtAnswerd" runat="server"></asp:TextBox>
        </td>
        <td>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAnswerd" 
                    ErrorMessage="*" ID="RequiredFieldValidator6" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Correct Answer"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            <asp:TextBox ID="txtCorrectAnswer" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCorrectAnswer" 
                    ErrorMessage="*" ID="RequiredFieldValidator7" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            <asp:RadioButtonList ID="choose" runat="server" RepeatDirection="Horizontal" 
                Width="245px">
                <asp:ListItem Value="Multiple">Multiple Answer</asp:ListItem>
                <asp:ListItem Value="Single">Single Answer</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
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
        <td>
            &nbsp;</td>
        <td align="right">
            <asp:ImageButton ID="ImageButton7" runat="server" 
                ImageUrl="~/Images/adddetails.png"  OnClick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:ImageButton ID="ImageButton8" runat="server" 
                ImageUrl="~/Images/clear.png" onclick="btnClear_Click" 
                CausesValidation="False"  />
        </td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=asus;Initial Catalog=OnlineExamSystem;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [SubjectName] FROM [tblSubject]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <br />
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>