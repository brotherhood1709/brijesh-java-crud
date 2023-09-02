<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stud.aspx.cs" Inherits="crud.stud" %>

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
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table border="4">
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Mobile No.</td>
                        <td>Enrollment No.</td>
                        <td>Course</td>
                        <td>Active</td>
                        <td>Upadte</td>
                        <td>Delete</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                      <tr>
                        <td><%#DataBinder.Eval(Container,"DataItem.Id")%> </td>
                        <td><%#DataBinder.Eval(Container,"DataItem.name")%> </td>
                        <td><%#DataBinder.Eval(Container,"DataItem.mobileno")%> </td>
                        <td><%#DataBinder.Eval(Container,"DataItem.enrollmentno")%> </td>
                        <td><%#DataBinder.Eval(Container,"DataItem.course")%> </td>
                        <td><%#DataBinder.Eval(Container,"DataItem.active")%> </td>
                        <td><a href="update.aspx?name=<%#DataBinder.Eval(Container,"DataItem.name")%>">Upadte</td></a>
                        <td><a href="delete.aspx?name=<%#DataBinder.Eval(Container,"DataItem.name")%>">Delete</td></a>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
