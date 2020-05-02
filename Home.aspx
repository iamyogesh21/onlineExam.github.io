<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <DOCTYPE html>
    <html>
    <title>ChatBot</title>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="css/chatstyle.css">
        <script rel="javascript" href="js/jquery-3.4.1.min.js"></script>
        <script src="js/chat.js"></script>

    </head>

    <body>
        <div class="chatbox">
            <button id="hide" class="material-icons floating-btn" onclick="openform()">chat</button>
            <div class="chatlogs" id="myform">
                <div class="chat_bot">
                    <div class="user-photo">
                        <p id="chatbot"><br></p>
                    </div>
                </div>
                <div class="chatuser">
                    <div class="user-photo">
                        <input id="userchat" type="text" placeholder="Type message here...." size="39" align="left" onkeydown="if(event.keyCode ==13){talk()}">
                        <br></div>
                    <button class="btn-send" onclick="myFunction()">Send</button>
                    <button class="btn-cancle" onclick="closeform()">Cancle</button>
                </div>
            </div>
        </div>
    </body>

    </html>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-slide owl-carousel site-blocks-cover">
      <div class="intro-section" style="background-image: url('images/bg.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-10 mx-auto text-center" data-aos="fade-up">
              <h1 style="font-size:300%">Online Examination System</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="intro-section" style="background-image: url('images/hero_1.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-10 mx-auto text-center" data-aos="fade-up">
              <h1 style="font-size:300%">You Can Give Exam Remotely.</h1>
            </div>
          </div>
        </div>
      </div>

    </div>
        <div style = "background-position: left; background-image : url('Images/loginimg.jpg'); background-repeat :no-repeat">
    
  
        <br />
        <br />
          <br />
            <br/>
            <br/><br/>
        <table  align="right" style="width: 419px; height: 142px">
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td align="center" colspan="4">

                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="19px" ForeColor="#2A76A8" 
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
                <td >

                    &nbsp;</td>
                <td >

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">

                    &nbsp;</td>
                <td align="right">

                    <asp:Label ID="Label1" runat="server" Font-Names="Microsoft Sans Serif" 
                        Font-Size="10pt" Text="User Name "></asp:Label>
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
                <td align="right">

                    <asp:Label ID="Label2" runat="server" Font-Names="Microsoft Sans Serif" 
                        Font-Size="10pt" Text="Password "></asp:Label>
                </td>
                <td colspan="2">

                    &nbsp;</td>
                <td>

                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter Password" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
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
                <td align="left" colspan="2" nowrap="nowrap">

                    <asp:LinkButton ID="lnkForgot" CssClass="textdecor" runat="server" 
                        onclick="lnkForgot_Click" ForeColor="#2A75A8" CausesValidation="False" Font-Bold="True">Forgot Password</asp:LinkButton>

                </td>
                <td align="left" colspan="2">

                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="btnSignin" runat="server" 
                        ImageUrl="~/Images/submit.png" OnClick="btnSign_Click" Height="20px" ImageAlign="Middle" />
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
                <td  align="center" colspan="4">

                    &nbsp;</td>
                <td align="center">

                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">

                    &nbsp;</td>
                <td  align="center" colspan="4">

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
                <td  align="center" colspan="4">

                    &nbsp;</td>
                <td  align="center">

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
          <br />
           <br />
     <br />
          </div>

</asp:Content>
