<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
    </style>   
</head>
<body style="background-color:darkolivegreen">
  <form id="form1" runat="server">
   <div style="border:5px double green; border-radius:5%; background-color:wheat; margin:0 25% 0 25%; padding:0 0 20px 0"> 
    <center>
    <h1 style="color:darkgreen">Letayel-IL</h1>
    <h2 style="color:darkgreen">כניסה</h2>
    <table border="0" style="margin-right:60px">    
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st1 %></td>
      <td><input style="background-color:white" dir="ltr" type="text" name="username" id="username" value="<%=username %>"/></td>
      <td style="width:100px; text-align:center">שם משתמש</td>
     </tr> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st2 %></td>
      <td><input style="background-color:white" dir="ltr" type="password" name="password1" id="password1" value="<%=pass %>"/></td>
      <td style="width:100px; text-align:center">סיסמא</td>
     </tr>              
    </table>             
    <br />
    <input type="checkbox" checked="checked" name="remember" id="remember"/><span style="margin-right:135px">זכור אותי</span> 
    <br />
    <br />
    <b><a href="forgetPass.aspx" style="margin-right:115px">שכחתי סיסמא</a></b>
    <br /> 
    <br />   
    <input style="color:black" type="submit" name="submit" id="submit" value="היכנס" />
    <br />
    <br />
    <a href="signup.aspx" style="font-size:larger">לא רשום - להרשמה לחץ כאן</a>
    <br /><br />
    <a href="HomePage.aspx" style="font-size:larger">חזרה לדף הבית</a>
    </center>
   </div>
  </form>
    <center>
         <h1><%=userMsg %></h1>
    </center>
</body>
</html>
