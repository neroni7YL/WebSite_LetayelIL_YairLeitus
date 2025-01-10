<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customersReport.aspx.cs" Inherits="customersReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers Report</title>
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
        <div style="border: 5px double green; border-radius: 5%; background-color: wheat; margin: 0 15% 0 15%; padding: 0 0 20px 0">
            <center> 
            <h2 style="color: darkgreen">דוח לקוחות</h2>
            <%=usersList %>
            <br />
            <%=usersCount %>
            <br />
            <br />
            <table border="0">
                <tr>
                    <td dir="rtl">
                        מיין לפי סוג הרכישה
                        <select name="receiving" style="width: 60px">
                            <option value="purchase">רכישה</option>
                            <option value="shipping">משלוח</option>
                            <option value="collecting">איסוף עצמי</option>
                        </select></td>
                </tr>
            </table>
            <br />
            <input style="color: black" type="submit" name="submit" id="submit" value="אשר" />
            <br />
            <br />
            <a href="shop.aspx" style="font-size: 19px">חנות</a>
            <br />
            <br />
            <a href="HomePage.aspx" style="font-size: 19px">חזרה לדף הבית</a>
            </center>
        </div>
    </form>
</body>
</html>
