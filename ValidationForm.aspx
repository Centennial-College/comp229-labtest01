<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="COMP229_300867968_KevinMa_LabTest01.ValidationForm" %>

<!DOCTYPE html>

<!--
    Author: Kevin Ma
    Student #: 300867968
    Date: June 23, 2016

    Filename: ValidationForm.aspx
    Description: This web application is to demonstrate the student's knowledge in 
                 ASP.NET
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>COMP229 - Lab Test 01 - Kevin Ma | #300867968</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <header class="jumbotron text-center">
        <h1>COMP229 Lab Test 01 - Form Validation</h1>
    </header>
    <div class="container-fluid">
        <div class="row">
            <form id="form1" runat="server">
                <div class="col-sm-offset-2 col-sm-8">
                    <!-- Name -->
                    <p>
                        Enter Name:<br />
                        <asp:TextBox ID="nameTextBox" runat="server" />
                        <asp:RequiredFieldValidator ID="nameReq" runat="server"
                            ControlToValidate="nameTextBox"
                            ErrorMessage="Name is required!"
                            SetFocusOnError="true" Display="Dynamic"
                            CssClass="Validator" />
                    </p>
                    <!-- Password -->
                    <p>
                        Password and Confirmation:<br />
                        <asp:TextBox ID="passwordTextBox" runat="server"
                            TextMode="Password" />
                        <asp:RequiredFieldValidator ID="passwordReq"
                            runat="server"
                            ControlToValidate="passwordTextBox"
                            ErrorMessage="Password is required!"
                            SetFocusOnError="true" Display="Dynamic"
                            CssClass="Validator" />
                        <asp:TextBox ID="confirmPasswordTextBox" runat="server"
                            TextMode="Password" />
                        <asp:RequiredFieldValidator ID="confirmPasswordReq"
                            runat="server" ControlToValidate="confirmPasswordTextBox"
                            ErrorMessage="Password confirmation is required!"
                            SetFocusOnError="True" Display="Dynamic"
                            CssClass="Validator" />
                        <asp:CompareValidator ID="comparePasswords" runat="server"
                            ControlToCompare="passwordTextBox"
                            ControlToValidate="confirmPasswordTextBox"
                            ErrorMessage="Your passwords do not match up!"
                            SetFocusOnError="true"
                            Display="Dynamic"
                            CssClass="Validator" />
                    </p>
                    <!-- Age -->
                    <p>
                        Age:<br />
                        <asp:TextBox ID="ageTextBox" runat="server" />
                        <asp:RequiredFieldValidator ID="ageReq" runat="server"
                            ControlToValidate="ageTextBox"
                            ErrorMessage="Age is required!"
                            SetFocusOnError="true" Display="Dynamic"
                            CssClass="Validator" />
                        <asp:RangeValidator ID="ageRangeCheck" runat="server"
                            ControlToValidate="ageTextBox"
                            MinimumValue="21" MaximumValue="30" Type="Integer"
                            ErrorMessage="Age should be between 21 to 30"
                            SetFocusOnError="true"
                            Display="Dynamic"
                            CssClass="Validator" />
                    </p>
                    <!-- Email ID -->
                    <p>
                        Email address:<br />
                        <asp:TextBox ID="emailTextBox" runat="server" />
                        <asp:RequiredFieldValidator ID="emailReq" runat="server"
                            ControlToValidate="emailTextBox"
                            ErrorMessage="Email address is required!"
                            SetFocusOnError="true" Display="Dynamic"
                            CssClass="Validator" />
                        <asp:RegularExpressionValidator ID="emailValidator"
                            runat="server" ControlToValidate="emailTextBox"
                            ValidationExpression="^\S+@\S+\.\S+$"
                            ErrorMessage="You must enter a valid email address!"
                            SetFocusOnError="true"
                            Display="Dynamic"
                            CssClass="Validator" />
                    </p>
                    <!-- Submit Button -->
                    <p>
                        <asp:Button Text="Submit" ID="submitButton"
                            runat="server"
                            OnClick="submitButton_Click"
                            CssClass="btn-primary" />
                    </p>
                    <!-- Submission Message -->
                    <p>
                        <asp:Label ID="submissionMessageLabel" runat="server" />
                    </p>
                </div>
            </form>
        </div>
        <footer class="row">
            <div class="col-xs-12 text-center">
                <h6>&copy;&nbsp;2016 Kevin Ma | Student #: 300867968. All Rights Reserved.</h6>
            </div>
        </footer>
    </div>
</body>
</html>
