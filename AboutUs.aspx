<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <hr />
     <div class="row">
        <div class="col-md-12">
           <div class="site-section ftco-subscribe-1 site-blocks-cover pb-10">
        <div class="container" align="left">
          <div class="row align-items-end" >
            <div class="col-lg-4">
              <h2 class="mb-0">About Us</h2>
            </div>
          </div>
        </div>
      </div> 
            <div class="container">
                <p>In this project, we are going to make an online exam system where an admin can take exam for the current student who are logged in this system. Here, the admin will take the exam of objective type questions.</p>
                <p>In admin section </p>
                <ul>
                    <li>An admin can add another admin</li>
                    <li>An admin can create subjects type</li>
                    <li>An admin can add subject question with multiple object with answer</li>
                    <li>An admin can see a student result as well as profile</li>
                    <li>An admin can reset his/her profile</li>
                </ul>
                <p>In student section </p>
                <ul>
                    <li>A student can create his profile n</li>
                    <li>A student can take part in exam </li>
                    <li>A students can search the website to get easilt the exam</li>
                    <li>A student can see his progress report</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>