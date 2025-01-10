<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shop Letayel-IL</title>
    <style>
        * {
            font-family: Arial;
        }

        a:link {
            color: black;
            text-decoration: none;
        }

        a:visited {
            color: black;
            text-decoration: none;
        }

        table {
            border-collapse: collapse;
        }
    </style>
</head>
<body style="background-color: darkolivegreen">
    <form id="form1" runat="server">
        <div style="border: 5px double green; border-radius: 5%; background-color: wheat; margin: 0 20% 0 20%; padding: 0 30px 30px 0">
            <center>
            <h2 style="color: green">Letayel-IL חנות</h2>
            <h3 style="color: forestgreen"><b><%=message %></b></h3>
            <table style="width: 585px; text-align: center; margin-right:150px" border="1" dir="rtl">
                <tr>
                    <th style="width: 115px">מוצר</th>
                    <th style="width: 110px">תמונה</th>
                    <th style="width: 105px">מחיר</th>
                    <th style="width: 105px">כמות</th>
                    <th style="width: 150px; border: hidden; border-right: thin"></th>
                </tr>
                <tr>
                    <td>תרמיל יום</td>
                    <td>
                        <img src="pictures1/backpack.jpg" style="height: 60px; width: 90px" /></td>
                    <td>250 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countBackpack" id="countBackpack" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st1 %></td>
                </tr>
                <tr>
                    <td>נעלי הליכה</td>
                    <td>
                        <img src="pictures1/shoes.jpg" style="height: 60px; width: 90px" /></td>
                    <td>300 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countShoes" id="countShoes" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st2 %></td>
                </tr>
                <tr>
                    <td>כובע</td>
                    <td>
                        <img src="pictures1/hat.jpg" style="height: 60px; width: 90px" /></td>
                    <td>50 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countHat" id="countHat" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st3 %></td>
                </tr>
                <tr>
                    <td>שק שינה</td>
                    <td>
                        <img src="pictures1/sleeping_bag.jpg" style="height: 60px; width: 90px" /></td>
                    <td>80 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countBag" id="countBag" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st4 %></td>
                </tr>
                <tr>
                    <td>אוהל</td>
                    <td>
                        <img src="pictures1/tent.jpg" style="height: 60px; width: 90px" /></td>
                    <td>100 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countTent" id="countTent" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st5 %></td>
                </tr>
                <tr>
                    <td>מעיל גשם</td>
                    <td>
                        <img src="pictures1/coat.jpg" style="height: 60px; width: 90px" /></td>
                    <td>60 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countCoat" id="countCoat" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st6 %></td>
                </tr>
                <tr>
                    <td>שעון שטח</td>
                    <td>
                        <img src="pictures1/watch.jpg" style="height: 60px; width: 90px" /></td>
                    <td>120 ש"ח</td>
                    <td>
                        <input style="width: 37px" name="countWatch" id="countWatch" value="0" /></td>
                    <td style="color: darkred; border: hidden; border-right: thin"><%=st7 %></td>
                </tr>
                <tr>
                    <td colspan="2">קבלת המוצרים:</td>
                    <td>
                        <input type="radio" checked="checked" name="receiving" id="shipping" value="shipping" />משלוח - 40 ש"ח</td>
                    <td>
                        <input type="radio" name="receiving" id="collecting" value="collecting" />איסוף עצמי</td>                                                           
                </tr>
            </table>
            <br />
            <input style="color: black" type="reset" name="reset" id="reset" value="נקה" />
            <br />
            <br />            
            <input style="color: black" type="submit" name="buy" id="buy" value="קנייה" />
            <br />
            <br />           
            <%=customersReport %>
            <br />
            <a href="HomePage.aspx" style="font-size: larger">חזרה לדף הבית</a>
            </center>
        </div>
    </form>
    <center>
    <h1><%=userMsg %></h1>
    </center>
</body>
</html>
