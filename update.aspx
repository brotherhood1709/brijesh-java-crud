<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="crud.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table border="4">
           <tr>
               <td>Name
               <td><asp:TextBox ID="TextBox1" runat="server"/>
           </tr>
            <tr>
               <td>Mobile No.</td>
               <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Number"/>
           </tr>
           <tr>
               <td>Enrollment No.</td>
               <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Number"/>
           </tr>
            <tr>
               <td>Stream</td>
               <td><asp:DropDownList ID="DropDownList1" runat="server"/>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
           </tr>
       </table>
    </form>
</body>
</html>
