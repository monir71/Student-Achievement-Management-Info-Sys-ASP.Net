<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Student_Achievement_Management_Info_Sys.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Student Achievement Management Information System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top: 10px">
        <div class="col-sm-8">
            <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">Student Achievement Management Information System</h1>

            <div style="background: white;" class="container-fluid bg-1 text-center">
                <div class="row">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-6">
                        <img src="logo/signin.jpg" width="300" height="150" alt="Log In">
                        <br>
                        <div class="input-group" style="box-shadow: 3px 3px 15px grey;">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox runat="server" ID="email" class="form-control" placeholder="Username" required="true" autocomplete="off" />
                        </div>
                        <br>
                        <div class="input-group" style="box-shadow: 3px 3px 15px grey;">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox runat="server" ID="passfield" class="form-control" placeholder="Password" required="true" autocomplete="off" />
                        </div>
                        <br>

                        <!-- CAPTCHA LOC -->

                        <div class="text-center">
                            <img id="captcha" src="logo/captcha.png" alt="CAPTCHA Image" style="margin-bottom: 10px;" /><br>
                            <a href="#">[ Refresh ]</a>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-qrcode"></i></span>
                            <asp:TextBox runat="server" ID="captcha_code" class="form-control" size="10" MaxLength="6" required="true" autocomplete="off" placeholder="Captcha Code" />
                        </div>
                        <br>

                        <asp:Button Text="Submit" runat="server" Style="box-shadow: 3px 3px 15px grey;" class="btn btn-primary btn-block" ID="SubmitButton" OnClick="SubmitButton_Click" />

                    </div>
                    <div class="col-sm-3">
                    </div>
                </div>
            </div>

        </div>
        <div class="col-sm-4" id="tnc" style="box-shadow: 3px 3px 15px grey;">
            <h1 class="bg-primary text-center" style="padding-top: 5px; box-shadow: 3px 3px 15px grey; padding-bottom: 5px; margin-bottom: 50px; font-family: 'Faster One'">About this application</h1>
            <ul class="list-group text-primary" style="font-family: 'Sofia'">
                <li class="list-group-item">
                    <br>
                    Student Achievement Management Information System.<br>
                    <br>
                </li>
                <li class="list-group-item">
                    <br>
                    Admin can make necessary changes to Student Records.<br>
                    <br>
                </li>
                <li class="list-group-item">
                    <br>
                    Students achjievements are generated.<br>
                    <br>
                </li>
                <li class="list-group-item">
                    <br>
                    All other necessary tools for students' achievement evaluation.<br>
                    <br>
                </li>
            </ul>

        </div>
    </div>
</asp:Content>
