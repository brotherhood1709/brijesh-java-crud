<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visitorcount.aspx.cs" Inherits="VisitorCount.visitorcount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <b>No of Visits:</b>
                </td>
                <td>
                    <asp:Label ID="lblCount" runat="server"  />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
