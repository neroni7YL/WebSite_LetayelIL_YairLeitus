<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
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
  <form  id="form1" runat="server">
   <div style="border:5px double green; border-radius:5%; background-color:wheat; margin:0 25% 0 25%; padding:0 0 30px 0"> 
    <center>    
    <h2 style="color:darkgreen">יצירת קשר</h2>
    <table border="0" style="margin-right:90px">    
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st1 %></td>
      <td><input style="background-color:white" dir="rtl" type="text" name="name" id="name" value="<%=fn %>"/></td>
      <td style="text-align:center">שם פרטי</td>
     </tr> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st2 %></td>
      <td><input style="background-color:white" dir="rtl" type="text" name="lastname" id="lastname" value="<%=ln %>"/></td>
      <td style="text-align:center">שם משפחה</td>
     </tr> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st3 %><br /><%=st4 %></td>
      <td>
       <input style="background-color:white; width:103px" dir="ltr" type="text" name="phone" id="phone" value="<%=phone %>"/>
       <select name="areacodeN">
        <option value="areacode">קידומת</option>
        <option>050</option>
        <option>051</option> 
        <option>052</option> 
        <option>053</option> 
        <option>054</option>
        <option>055</option> 
        <option>056</option>       
        <option>058</option> 
        <option>059</option>
       </select>           
      </td>
      <td style="text-align:center">מספר טלפון</td>
     </tr> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st5 %></td>
      <td><input style="background-color:white" dir="ltr" type="email" name="email" id="email" value="<%=email %>"/></td>
      <td style="text-align:center">דוא"ל</td>
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px; padding-bottom:100px"><%=st6 %></td>
      <td><textarea style="background-color:white" dir="rtl" cols="21" rows="8" name="textM" id="textM" placeholder="אנא הקלד את התוכן"><%=textM %></textarea></td>
      <td style="padding-bottom:110px; text-align:center">הודעה</td>
     </tr>                
    </table>
    <br />
    <input style="color:black" type="reset" id="reset" value="נקה" />               
    <br /><br />           
    <input style="color:black" type="submit" name="submit" id="submit" value="שלח" />
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
