<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="AspNetCarsStie.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 416px;
            margin-top: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 0px; margin-top: 0px">
            <asp:Label ID="Label3" runat="server" Text="Welcome to Cars Sites"></asp:Label>
            <br />
            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem NavigateUrl="Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="BuildCar.aspx" Text="Buy A Car" Value="Buy A Car"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CarID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CarID" HeaderText="CarID" ReadOnly="True" SortExpression="CarID" />
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="PetName" HeaderText="PetName" SortExpression="PetName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" DeleteCommand="DELETE FROM [Cars] WHERE [CarID] = @CarID" InsertCommand="INSERT INTO [Cars] ([CarID], [Make], [Color], [PetName]) VALUES (@CarID, @Make, @Color, @PetName)" SelectCommand="SELECT * FROM [Cars]" UpdateCommand="UPDATE [Cars] SET [Make] = @Make, [Color] = @Color, [PetName] = @PetName WHERE [CarID] = @CarID">
            <DeleteParameters>
                <asp:Parameter Name="CarID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CarID" Type="String" />
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="PetName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="PetName" Type="String" />
                <asp:Parameter Name="CarID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
