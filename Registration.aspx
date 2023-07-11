<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Defination.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!------ Include the above in your HEAD tag ---------->

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
</head>
<body>
    <div class="container">
        <form class="form-horizontal" runat="server">
            <h2>Registration</h2>
            <div class="form-group">
                <label for="firstName" class="col-sm-3 control-label">First Name</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="phoneNumber" class="col-sm-3 control-label">Mobile number </label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Mobile Number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="birthDate" class="col-sm-3 control-label">Email :</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox5" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>

                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password*</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox3" type="password" class="form-control" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Is Not Matched !" ControlToCompare="TextBox3" ControlToValidate="TextBox4"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Confirm Password*</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="TextBox4" type="password" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <button type="submit" class="btn btn-primary ">Submit</button>
            <button type="submit" class="btn btn-primary ">Reset</button>

        </form>
        <!-- /form -->
    </div>
</body>
</html>
<!-- ./container -->
