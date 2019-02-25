<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WebMovieStore.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
            <asp:Panel ID="Panel1" runat="server" Height="39px" >
                <div class="auto-style5">
                    <asp:Label ID="LoggedInAsLabel" runat="server" Text="LoggedInAsLabel"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LogOutBtn" runat="server" OnClick="LogOutBtn_Click">Log Out</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </asp:Panel>
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="OrderSummaryDetails">
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                <asp:BoundField DataField="MovieId" HeaderText="MovieId" SortExpression="MovieId" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" Text="Test Coupon" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="TotalLabel" runat="server" Text="TotalCost: "></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:SqlDataSource ID="OrderSummaryDetails" runat="server" ConnectionString="<%$ ConnectionStrings:MovieStoreDatabaseString %>" SelectCommand="SELECT [OrderId], [MovieId], [Cost], [MovieName], [Id] FROM [OrderItems] WHERE ([OrderId] = @OrderId)">
            <SelectParameters>
                <asp:SessionParameter Name="OrderId" SessionField="newOrderId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
