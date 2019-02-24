<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieListPage.aspx.cs" Inherits="WebMovieStore.MovieListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieStoreDatabaseString %>" SelectCommand="SELECT [Id], [Title], [Genre], [YearReleased], [AgeRating], [Duration], [Description], [StarRating], [Price], [PreviewUrl], [ImageFileLocation] FROM [Movies]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Width="514px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="16px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Title") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("ImageFileLocation") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price", "{0:D}") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YearReleased") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </SelectedItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
