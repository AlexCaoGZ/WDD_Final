<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="WDD_Final.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="myStyleSheet.css" />
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

        function okBtn_Clicked(value) {
            var object = document.getElementsByName("topping");
            var toppings = "";
            for (i = 0; i < object.length; i++) {
                toppings = toppings + "|";
                if (object[i].checked == true) {
                    toppings = toppings + object[i].value;
                }
            }
            if (value == "OK") {
                document.getElementById("HidTagId").value = document.getElementById("price").innerHTML + "|" + toppings;
            }
            document.getElementById("NextPage").click();
        }
    </script>
<body>
    <h1>SET Pizza Shop</h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Ciao, <asp:Label ID="userName_Label" runat="server"></asp:Label>.</td>
                    <td>In SET Pizza Shop, we can only offer one(1) larger pizza. And the pizze comes with sauce and cheese.</td>
                </tr>
                <tr>
                    <td>
                        Pizza price (Taxs included): 
                    </td>
                    <td>
                        <label id="price">11.3</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Opintional toppings:
                    </td>
                    <td>
                        <input name="topping" type="checkbox" value="Mushroom" onclick="topping_Changed(this.value,this.checked)"/>Mushroom
                        <input name="topping" type="checkbox" value="Green Olives" onclick="topping_Changed(this.value,this.checked)"/>Green Olives
                        <input name="topping" type="checkbox" value="Green Peppers" onclick="topping_Changed(this.value,this.checked)"/>Green Peppers
                        <input name="topping" type="checkbox" value="Pepperoni" onclick="topping_Changed(this.value,this.checked)"/>Pepperoni
                        <input name="topping" type="checkbox" value="Double Cheese" onclick="topping_Changed(this.value,this.checked)"/>Double Cheese
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="okBtn" value="OK" type="button" onclick="okBtn_Clicked(this.value)"/>
                        <asp:HiddenField ID="HidTagId" runat="server" Value="1"/>     
                            <div style="display:none;">    
                                <asp:Button ID="NextPage" Width="0" runat="server" Text="" OnClick="pageTransfer" />     
                            </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
