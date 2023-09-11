<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VisitorCount.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Login Page</h3>
            <table>
                <tr>
                    <td>Username:</td>
                    <td><asp:TextBox ID="text_username" class="form form-control" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="text_password" class="form form-control" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Login" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
