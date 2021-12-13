<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="WDD_Final.Page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="myStyleSheet.css" />
    <title>WDD Final::SET Pizza Shop</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<body>
    <h1>SET Pizza Shop</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Ciao, <asp:Label ID="userName_Label" runat="server"></asp:Label>.</td>
                    <td>Here is the summary of your pizza.</td>
                </tr>
                <tr>
                    <td>
                        Pizza price: 
                    </td>
                    <td>
                        <asp:label id="price" runat="server">1919</asp:label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Your Pizza will come with:
                    </td>
                    <td>
                        <asp:Label ID="toppings" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="okBtn" Text="OK" OnClick="okBtn_Clicked" />
                        <asp:Button runat="server" ID="cancelBtn" Text="Cancel" OnClick="cancelBtn_Clicked" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
