<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieListPage.aspx.cs" Inherits="WebMovieStore.MovieListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 23px;
        }

        .auto-style3 {
            height: 129px;
        }

        .auto-style4 {
            margin-top: 24px;
        }

        .auto-style5 {
            height: 129px;
            width: 683px;
        }

        .auto-style6 {
            height: 23px;
            width: 683px;
        }
        .auto-style7 {
            height: 129px;
            width: 5px;
        }
        .auto-style8 {
            height: 23px;
            width: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieStoreDatabaseString %>" SelectCommand="SELECT [Id], [Title], [Genre], [YearReleased], [AgeRating], [Duration], [Description], [StarRating], [Price], [PreviewUrl], [ImageFileLocation] FROM [Movies]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Width="514px" GridLines="Both" BorderColor="Gray" BorderWidth="1px" CellPadding="2" CellSpacing="2" HorizontalAlign="Center">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("Title") %>'></asp:Label>
                            <div class="video">
                            </div>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="220px" ImageUrl='<%# Eval("ImageFileLocation") %>' Width="181px" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style3">
                            <iframe height="315" src='<%# Eval("PreviewURL") %>' width="560">frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;</iframe>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label6" runat="server" Font-Italic="True" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("PreviewUrl") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
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
