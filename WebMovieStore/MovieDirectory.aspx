﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieDirectory.aspx.cs" Inherits="WebMovieStore.MovieDirectory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <!--Browse Popular Genres<p>
            <asp:ImageButton ID="ImageButton1" runat="server"
                AlternateText="ImageButton 1"
                ImageAlign="left"
                ImageUrl="Image/Thumbs/hands-holding-plant-silhouette-vector-graphics_template_1430381726381N7E.jpg"
                OnClick="ImageButton_Click" />
        </p> -->

         <table style="height: 900px; width: 1200px">
                <tr align="center">
                    <td>
                        <asp:ImageButton ID="ImageBtn1" runat="server" Height="150px" Width="250px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageBtn2" runat="server" Height="150px" Width="250px"  />
                    </td>
                    <td >
                        <asp:ImageButton ID="ImageBtn3" runat="server" Height="150px" Width="250px"  />
                    </td>
                </tr>
                <tr align="center">
                    <td >
                        <asp:ImageButton ID="ImageBtn4" runat="server" Height="150px" Width="250px" />
                    </td>
                    <td class="auto-style7">
                        <asp:ImageButton ID="ImageBtn5" runat="server" Height="150px" Width="250px"/>
                    </td>
                    <td class="auto-style7">
                        <asp:ImageButton ID="ImageBtn6" runat="server" Height="150px" Width="250px" />
                    </td>
                </tr>
                <tr align="center">
                    <td ">
                        <asp:ImageButton ID="ImageBtn7" runat="server" Height="150px" Width="250px"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageBtn8" runat="server" Height="150px" Width="250px"  />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageBtn9" runat="server" Height="150px" Width="250px"  />
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
