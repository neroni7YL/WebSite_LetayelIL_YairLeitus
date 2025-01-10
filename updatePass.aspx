<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatePass.aspx.cs" Inherits="updatePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Password</title>
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
   <div style="border:5px double green; border-radius:5%; background-color:wheat; margin:0 25% 0 25%; padding:0 0 30px 0"> 
    <center>
    <h2 style="color:darkgreen">עדכון סיסמא</h2>
    <br />
    <table style="margin-right:60px" border="0">    
     <tr>
      <td style="color:darkred; width:120px" dir="rtl"><%=st1 %></td>     
      <td><input style="background-color:white" dir="ltr" type="text" name="username" id="username" value="<%=username %>"/></td>
      <td style="text-align:center">שם משתמש</td>
     </tr>
     <tr>
      <td style="color:darkred; width:120px" dir="rtl"><%=st2 %></td>      
      <td><input style="background-color:white" dir="ltr" type="password" name="password1" id="password1" value="<%=pass %>"/></td>
      <td style="text-align:center">סיסמא</td>
     </tr>
     <tr>
      <td style="color:darkred; width:120px" dir="rtl"><%=st3 %></td>      
      <td><input style="background-color:white" dir="ltr" type="password" name="rePassword1" id="rePassword1" value="<%=rePass1 %>"/></td>
      <td style="text-align:center">סיסמא חדשה</td>
     </tr>  
     <tr>
      <td style="color:darkred; width:120px" dir="rtl"><%=st4 %></td>      
      <td><input style="background-color:white" dir="ltr" type="password" name="rePassword2" id="rePassword2" value="<%=rePass2 %>"/></td>
      <td style="text-align:center">אימות סיסמא</td>
     </tr>                      
    </table>
    <br />
    <br />
    <input style="color:black" type="reset" name="reset" id="reset" value="נקה" />               
    <br /> 
    <br />            
    <input style="color:black" type="submit" name="submit" id="submit" value="שלח" />
    <br />
    <br />
    <br />
    <a href="HomePage.aspx" style="font-size:larger">חזרה לדף הבית</a>
    </center>
   </div>
  </form>
    <center>
        <h1><%=userMsg %></h1>         
    </center>
</body>
</html>
