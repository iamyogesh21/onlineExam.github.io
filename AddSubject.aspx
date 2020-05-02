<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="AddSubject" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     <div>
    <table  align="center">
        <tr>
            <td>
                &nbsp;</td>
            <td  colspan="4" align="center">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td>
                <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                    max-Width="482px" max-Height="207px">
                    <asp:TabPanel runat="server" HeaderText="Add Subject" ID="TabPanel1">
                        <HeaderTemplate>
                            Add Subject
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnlAdd" runat="server" max-Height="auto" max-Width="100%">
                                <table>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td rowspan="5">
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Subject ID"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtID" runat="server" Enabled="False"></asp:TextBox>
                                        </td>
                                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
                                            Enabled="True" TargetControlID="txtSubject" WatermarkText="Enter Subject">
                                        </asp:TextBoxWatermarkExtender>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Enter Subject Name">
                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtSubject" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td >
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="btnAddsubject" runat="server" ImageUrl="~/Images/Add.png" 
                                                OnClick="btnAddsubject_Click" CausesValidation="False" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td >
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                             
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Delete Subject">
                        <HeaderTemplate>
                            Delete Subject
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnlDelete" runat="server" max-Height="auto" max-Width="100%">
                                <table>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
                                            Enabled="True" TargetControlID="txtDelete" WatermarkText="Enter Subject">
                                        </asp:TextBoxWatermarkExtender>
                                    </tr>
                                    <tr>
                                        <td  rowspan="2">
                                            &nbsp;</td>
                                        <td style="width:200px;">
                                            <asp:Label ID="lblSubjectName" runat="server" Text="Subject Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDelete" runat="server"></asp:TextBox>
                                           
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtDelete" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td >
                                            &nbsp;</td>
                                        <td>
                                            <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/Delete.png" 
                                                onclick="btnDelete_Click" CausesValidation="False" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:TabPanel>
                </asp:TabContainer>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4" align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=asus;Initial Catalog=OnlineExamSystem;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [SubjectName] FROM [tblSubject]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        <table align="center">
         <tr > <td colspan="2">
                                &nbsp;</td>
            <td>
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="350px"
                                    Height="206px" PageSize="5">
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <Columns>
                                        <asp:BoundField DataField="SubjectName" HeaderText=" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Subject Name" 
                                            SortExpression="SubjectName" />
                                    </Columns>
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                </asp:GridView>
            </td></tr></table>
    <br />
    <br />
         </div>
</asp:Content>

