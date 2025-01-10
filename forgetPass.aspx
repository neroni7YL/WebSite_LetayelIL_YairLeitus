<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetPass.aspx.cs" Inherits="forgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Pass</title>
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
    <h2 style="color:darkgreen">שכחתי סיסמא</h2>
    <br />
    <table border="0" style="margin-right:50px">    
     <tr>
      <td style="color:darkred; width:120px" dir="rtl"><%=st1 %></td>      
      <td><input style="background-color:white" dir="ltr" type="text" name="username" id="username" value="<%=username %>"/></td>
      <td style="text-align:center">שם משתמש</td>
     </tr>
     <tr> 
      <td style="color:darkred; width:120px" dir="rtl"><%=st2 %></td>     
      <td><input style="background-color:white" dir="rtl" type="text" name="tripN" id="tripN" value="<%=tripN %>"/></td>
      <td style="text-align:center">יעד הטיול הבא</td>
     </tr>                     
    </table>
    <br />                   
    <input style="color:black" type="submit" name="submit" id="submit" value="אשר" />      
    <br />
    <br />
    <a href="login.aspx" style="font-size:larger">חזרה להתחברות</a>
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
