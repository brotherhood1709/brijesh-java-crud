
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="VisitorCount.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/fontawesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />


            <asp:GridView ID="Gridview1" runat="server"></asp:GridView>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="tblcolor">  
                    <tr>
                        <b>
                            <td>ID :  
                            </td>
                            <td>sname :
                            </td>
                        </b>
                    </tr>
                </HeaderTemplate>
                <SeparatorTemplate>  
                    <br />
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    
                </tr>  
            </SeparatorTemplate>
                <ItemTemplate>
                    <tr class="tblrowcolor">
                        <td>
                            <%#DataBinder.Eval(Container,"DataItem.Id")%>  
                        </td>

                        <td>
                            <%#DataBinder.Eval(Container,"DataItem.sname")%>  
                        </td>
                    </tr>
                </ItemTemplate>
                <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                     
                </tr>  
            </SeparatorTemplate>
                <AlternatingItemTemplate>
                    <tr>
                        <td>
                            <%#DataBinder.Eval(Container,"DataItem.Id")%>  
                        </td>
                        <td>
                            <%#DataBinder.Eval(Container,"DataItem.sname")%>  
                        </td>
                     
                    </tr>
                </AlternatingItemTemplate>
                <FooterTemplate>  
                <tr>  
                    <td>  
                        School Records displayed  
                    </td>  
                </tr>  
                </table>   
            </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
               <a href="#"><i class="fa-solid fa-trash fa-2xl" style="color: #bee62d;"></i></a>
        </div>
    </form>
</body>
</html>
