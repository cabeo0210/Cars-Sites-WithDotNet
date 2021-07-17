<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuildCar.aspx.cs" Inherits="AspNetCarsStie.BuildCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div style="margin-top: 0px">
            <asp:Label ID="Label3" runat="server" Text="Welcome to Cars Sites" BackColor="White" BorderColor="#FF6666"></asp:Label>
            <br />
            <br />
            
        </div>
        </div>
        <asp:Label ID="Label4" runat="server" Text="Use this Wizard to build your dream car"></asp:Label>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="358px">
            <HeaderStyle BackColor="White" />
            <NavigationStyle BackColor="White" BorderColor="White" />
            <StartNextButtonStyle BackColor="#CC0000" BorderStyle="Solid" />
            <SideBarButtonStyle BackColor="White" ForeColor="Black" />
            <SideBarStyle BackColor="White" BorderColor="White" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Pick Your Model">
                    <asp:TextBox ID="txtCarModel" runat="server" Height="31px"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Pick Your Color">
                    <asp:ListBox ID="ListBoxColor" runat="server" Width="161px">
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Red</asp:ListItem>
                    </asp:ListBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Name Your Car">
                    <asp:TextBox ID="txtCarPetName" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Delivery Date">
                    <asp:Calendar ID="carCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <br />
        <asp:Label ID="lblOrder" runat="server" Text="Order"></asp:Label>
        <br />
        <br />
        <asp:Menu ID="Menu2" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Inventory.aspx" Text="View Inventory" Value="View Inventory"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>
