<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieListPage.aspx.cs" Inherits="WebMovieStore.MovieListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 769px;
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

        .auto-style12 {
            height: 129px;
            width: 256px;
        }
        .auto-style13 {
            height: 129px;
            width: 472px;
        }
        .auto-style14 {
            height: 129px;
            width: 321px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label5" runat="server" Text="Movie Listing" Font-Size="X-Large"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieStoreDatabaseString %>" SelectCommand="SELECT [Id], [Title], [Genre], [YearReleased], [AgeRating], [Duration], [Description], [StarRating], [Price], [PreviewUrl], [ImageFileLocation] FROM [Movies] WHERE ([Genre] = @Genre)">
            <SelectParameters>
                <asp:SessionParameter Name="Genre" SessionField="GENRE" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Width="514px" GridLines="Both" BorderColor="Gray" BorderWidth="1px" CellPadding="2" CellSpacing="2" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("Title") %>' Font-Size="Larger" BackColor="Silver" BorderColor="#3366CC" ForeColor="#003366" ></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("YearReleased") %>'></asp:Label>
                            <div class="video">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="220px" ImageUrl='<%# Eval("ImageFileLocation") %>' Width="181px" />
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style12">
                            <iframe height="315" src='<%# Eval("PreviewURL") %>' width="560">frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;</iframe>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:Label ID="Label6" runat="server" Font-Italic="True" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="3">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button1" runat="server"  Text="Purchase" CommandName="PurchaseOption" CommandArgument='<%# Eval("Id") %>'/>
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
