<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <hr />
<div>
     <div class="site-section ftco-subscribe-1 site-blocks-cover pb-10">
        <div class="container" align="left">
          <div class="row align-items-end" >
            <div class="col-lg-7">
              <h2 class="mb-0">Contact</h2>
              <p>Connecting With Us.</p>
            </div>
          </div>
        </div>
      </div> 
    <hr />
     <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="fname">First Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 form-group">
                    <label for="lname">Last Name</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="eaddress">Email Address</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  
                </div>
                <div class="col-md-6 form-group">
                    <label for="tel">Mobile Number</label>
                    <asp:TextBox ID="TextBox4" runat="server"  class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 form-group">
                    <label for="message" style="vertical-align:top">Message</label>
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <asp:Button ID="Button1" runat="server" Text="Send Message" class="btn btn-primary btn-lg px-5" OnClick="Button1_Click"/>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    </div>
    <br />
    <br />
</asp:Content>