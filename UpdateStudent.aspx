<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="Student_Achievement_Management_Info_Sys.UpdateStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Student Mgt : Admin Area</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>Students<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="AddStudent.aspx"><span class="glyphicon glyphicon-user"></span>Add Students</a></li>
                            <li><a href="UpdateStudent.aspx"><span class="glyphicon glyphicon-user"></span>Update Students</a></li>
                            <li><a href="DeleteStudent.aspx"><span class="glyphicon glyphicon-user"></span>Delete Students</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Students By Roll</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Students By Class</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Students By Group</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Students by Country</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get All Students</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-book"></span>Library<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Add Book</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Update Book</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Delete Book</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Book By Code</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Book By Type</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Book By Author</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get All Books</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get Book Sort</a></li>
                        </ul>
                    </li>


                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-th"></span>Tools<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-pencil"></span>Evaluation</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-cog"></span>Settings<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Change</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Ststistics<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Achievement</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Academic</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-shopping-user"></span>Admin<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Add Admin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Update Admin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Delete Admin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Change Password</a></li>
                        </ul>
                    </li>
                    <li><a href="../"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--CSS Spinner-->
    <div class="spinner-wrapper">
        <div class="spinner"></div>
        <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">Update Students Information</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

            <Columns>
                <asp:BoundField DataField="StudentId" HeaderText="Student ID" />
                <asp:BoundField DataField="Username" HeaderText="Student Username" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:BoundField DataField="Status" HeaderText="Student Status" />
                <asp:CommandField ShowEditButton="true" />
            </Columns>

        </asp:GridView>       

    </div>
</asp:Content>
