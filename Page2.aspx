<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WDD_Final.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script>
        function topping_Changed(value, isChecked) {
            var pizzaPrice = document.getElementById("price").innerHTML;
            var checkedStatus = "0";
            if (isChecked == true) { checkedStatus = "1";}
            var jsonData = { topping: value, checked1: checkedStatus, price1: pizzaPrice };
            var jsonString = JSON.stringify(jsonData);
            $.ajax({
                type: "Post",
                url: "Page2.aspx/topping_Changed1",
                data: jsonString,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    var jsonStr = $.parseJSON(data.d);
                    document.getElementById("price").innerHTML = jsonStr[0].price;
                }
            })
        }
    </script>
<body>
    <h1>SET Pizza Shop</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Ciao, <asp:Label ID="userName_Label" runat="server"></asp:Label>.</td>
                </tr>
                <tr>
                    <td>
                        Pizza price: 
                    </td>
                    <td>
                        <label id="price">10</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Opintion:
                    </td>
                    <td>
                        <input name="topping" type="checkbox" value="Mushroom" onclick="topping_Changed(this.value,this.checked)"/>Mushroom
                        <input name="topping" type="checkbox" value="Green Olives" onclick="topping_Changed(this.value,this.checked)"/>Green Olives
                        <input name="topping" type="checkbox" value="Green Peppers" onclick="topping_Changed(this.value,this.checked)"/>Green Peppers
                        <input name="topping" type="checkbox" value="Pepperoni" onclick="topping_Changed(this.value,this.checked)"/>Pepperoni
                        <input name="topping" type="checkbox" value="Double Cheese" onclick="topping_Changed(this.value,this.checked)"/>Double Cheese
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
