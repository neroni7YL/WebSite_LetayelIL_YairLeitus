<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateForgetPass.aspx.cs" Inherits="updateForgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Forget Pass</title>
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
    <h2 style="color:darkgreen">כניסה ושינוי סיסמא</h2>
    <table border="0" style="margin-right:60px">    
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st1 %></td>
      <td><input style="background-color:white" dir="ltr" type="text" name="username" id="username" value="<%=username %>"/></td>
      <td style="width:100px; text-align:center">שם משתמש</td>
     </tr> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st2 %></td>
      <td><input style="background-color:white" dir="ltr" type="password" name="password1" id="password1" value="<%=rePass1 %>"/></td>
      <td style="width:100px; text-align:center">סיסמא חדשה</td>
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st3 %></td>
      <td><input style="background-color:white" dir="ltr" type="password" name="password2" id="password2" value="<%=rePass2 %>"/></td>
      <td style="width:100px; text-align:center">אימות סיסמא</td>
     </tr>              
    </table>                   
    <br /> 
    <br />   
    <input style="color:black" type="submit" name="submit" id="submit" value="היכנס" />
    <br />
    <br />     
    <a href="HomePage.aspx" style="font-size:larger">חזרה לדף הבית</a>
    </center>
   </div>
  </form>  
</body>
</html>
