<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieDirectory.aspx.cs" Inherits="WebMovieStore.MovieDirectory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="39px" >
                <asp:Label ID="LoggedInAsLabel" runat="server" Text="LoggedInAsLabel"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LogOutBtn" runat="server" OnClick="LogOutBtn_Click">Log Out</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
       <p> Browse Popular Genres
            &nbsp;
        </p>

        <table style="height: 900px; width: 1200px">
            <tr align="center">
                <td>
                    <asp:ImageButton ID="ImageBtn1" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Action Comedy.PNG" OnClick="ImageBtn1_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageBtn2" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Action.PNG" OnClick="ImageBtn2_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageBtn3" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Animation.PNG" OnClick="ImageBtn3_Click" />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:ImageButton ID="ImageBtn4" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Comedy.PNG" OnClick="ImageBtn4_Click" />
                </td>
                <td class="auto-style7">
                    <asp:ImageButton ID="ImageBtn5" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Fantasy.PNG" OnClick="ImageBtn5_Click" />
                </td>
                <td class="auto-style7">
                    <asp:ImageButton ID="ImageBtn6" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Romance.PNG" OnClick="ImageBtn6_Click" />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:ImageButton ID="ImageBtn7" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Sci-Fi.PNG" OnClick="ImageBtn7_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageBtn8" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/SuperHero.PNG" OnClick="ImageBtn8_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageBtn9" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Thriller.PNG" OnClick="ImageBtn9_Click" />
                </td>
            </tr>
        </table>
    </form>
    <!-- <hr />
    <hr />
    <hr />
    <hr /> -->
</body>
</html>
