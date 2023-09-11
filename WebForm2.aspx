<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="VisitorCount.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                User Name:-<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Password  :-<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Restore" />
            </div>
        </div>
    </form>
</body>
</html>
