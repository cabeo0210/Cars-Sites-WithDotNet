<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNetCarsStie.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Welcome to Cars Site"></asp:Label>
            <br />
        </div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BuildCar.aspx" Text="Buy A Car" Value="Buy A Car"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Inventory.aspx" Text="View Inventory" Value="View Inventory"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>
