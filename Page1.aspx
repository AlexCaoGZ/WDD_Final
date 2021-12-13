<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="WDD_Final.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<body>
    <h1>SET Pizza Shop</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox runat="server"
                            id="userName_TB"  /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" 
                            id="Button1"
                            Text="Submit"
                            OnClick="submitButton_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator runat="server"
                            id="RFV"
                            ControlToValidate="userName_TB"
                            Text="Your name <b>cannot</b> be BLANK." 
                            />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
