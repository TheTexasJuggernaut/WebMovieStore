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
        Browse Popular Genres<p>
            &nbsp;</p> 

         <table style="height: 900px; width: 1200px">
                <tr align="center">
                    <td>
                        <asp:ImageButton ID="ImageBtn1" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Action Comedy.PNG"/>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageBtn2" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Action.PNG"  />
                    </td>
                    <td >
                        <asp:ImageButton ID="ImageBtn3" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Animation.PNG"  />
                    </td>
                </tr>
                <tr align="center">
                    <td >
                        <asp:ImageButton ID="ImageBtn4" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Comedy.PNG" />
                    </td>
                    <td class="auto-style7">
                        <asp:ImageButton ID="ImageBtn5" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Fantasy.PNG"/>
                    </td>
                    <td class="auto-style7">
                        <asp:ImageButton ID="ImageBtn6" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Romance.PNG" />
                    </td>
                </tr>
                <tr align="center">
                    <td >
                        <asp:ImageButton ID="ImageBtn7" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Sci-Fi.PNG"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageBtn8" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/SuperHero.PNG"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageBtn9" runat="server" Height="150px" Width="250px" ImageUrl="~/Image/Thumbs/Thriller.PNG"  />
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
