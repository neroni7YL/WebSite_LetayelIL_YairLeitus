<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usersReport.aspx.cs" Inherits="usersReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users Report</title>
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
<body style="background-color:darkolivegreen">
    <form id="form1" runat="server">
     <div style="border:5px double green; border-radius:5%; background-color:wheat; margin:0 15% 0 15%; padding:0 0 20px 0">
        <center>
        <h2 style="color:darkgreen">דוח משתמשים</h2>
        <%=usersList %>
        <br />
        <%=usersCount %>
        <br />
        <br />
        <table style="margin-right:150px" border="0">
         <tr>
          <td style="color:darkred; text-align:center; width:150px"><%=st1 %></td>
          <td dir="ltr"><input style="width:37px" dir="rtl" name="yearB" id="yearB" value="<%=yearB %>"/> מיין לפי שנה</td>
         </tr>
        </table>  
        <br />
        <input style="color:black" type="submit" name="submit" id="submit" value="אשר" />
        <br />
        <br />
        <a href="deleteUser.aspx" style="font-size:19px">מחיקת משתמש</a>
        <br />
        <br />
        <a href="HomePage.aspx" style="font-size:19px">חזרה לדף הבית</a>
        </center>   
     </div>
    </form>
</body>
</html>
