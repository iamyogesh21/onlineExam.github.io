﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="TimedPanel" runat="server" updatemode="Conditional">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000" 
                    ontick="Timer1_Tick">
            </asp:Timer>
            <table>
                <tr>
                    <td align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblnoofquestions" runat="server"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:Label ID="clock" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="pnlQuest" runat="server" 
                Height="316px" style="margin-left: 40px;" Width="688px">
                <asp:Label ID="lblQuestion" runat="server" ForeColor="#0066FF"></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Option1" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox2" runat="server" />
                <asp:Label ID="Option2" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox3" runat="server" />
                <asp:Label ID="Option3" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="ans" />
                <asp:CheckBox ID="CheckBox4" runat="server" />
                <asp:Label ID="Option4" runat="server" Text=""></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <table>
                    <tr>
                        <td>
                            <asp:ImageButton ID="img_Next" runat="server" ImageUrl="~/Images/next.gif" 
                                OnClick="Button2_Click" Visible="false" />
                        </td>
                        <td>
                            <asp:ImageButton ID="img_Start" runat="server" ImageUrl="~/Images/start.gif" 
                                OnClick="img_Start_Click1" style="height: 19px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td align="left" class="style17">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=DELL-PC;Initial Catalog=OnlineExamSystem;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [tblQuestions]"></asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>