<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Israel.aspx.cs" Inherits="Israel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Israel</title>
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
<body style="background-image:url(pictures/background.jpg); background-repeat:no-repeat; background-size:cover">
  <form id="form1" runat="server">
   <div>
    <span style="color:white; font-size:x-large; border:solid wheat; border-radius:5%"><b><%=message %></b></span>   
    <center> 
    <h1 style="color:white">Letayel-IL</h1>               
    <table style="height:730px; width:1100px" border="1" dir="rtl">
     <tr style="background-color:darkolivegreen; height:50px; text-align:center">
      <th style="width:150px"><a href="HomePage.aspx">דף הבית</a></th>
      <th style="width:110px"><a href="Israel.aspx">בארץ</a></th>
      <th style="width:110px"><a href="abroad.aspx">בעולם</a></th>
      <th style="width:110px"><%=signup %><%=shop %></th>
      <th style="width:110px"><%=login %><%=logout %></th>       
      <th style="width:150px"><a href="about.aspx">אודות</a></th>
     </tr>
     <tr>
      <td style="background-color:darkolivegreen; height:290px"><marquee style="height:170px" direction="up"><b>ברוכים הבאים</b><br/>הטיול החודשי<br/><b>מפלי הניאגרה - קנדה</b><br /><br />לפרטים נוספים כנסו - בעולם<br />אמריקה!!!</marquee></td>
      <td style="background-color:white" colspan="5" rowspan="2"> 
       <table style="text-align:center; width:944px; height:644px" border="1">
        <tr style="height:20px">
         <td colspan="3"><h3>יעדי טיול בארץ</h3></td>
        </tr>
        <tr style="height:50px">
         <td><h1>צפון</h1></td>
         <td><h1>מרכז</h1></td>
         <td><h1>דרום</h1></td>
        </tr>
        <tr>
         <td>הר החרמון<br /><a href="Israel/Hermon.aspx"><img src="pictures/Hermon.jpg" style="height:150px; width:220px"/></a></td>
         <td>גבעת נפוליאון<br /><a href="Israel/Napoleons_Hill.aspx"><img src="pictures/Napoleons_Hill.jpg" style="height:150px; width:220px"/></a></td>
         <td>גן לאומי אשקלון<br /><a href="Israel/Ashkelon_Park.aspx"><img src="pictures/Ashkelon_Park.jpg" style="height:150px; width:220px"/></a></td>
        </tr>
        <tr>
         <td>הגנים הבהאיים בהר הכרמל<br /><a href="Israel/Terraces_Bahai.aspx"><img src="pictures/Terraces_Bahai.jpg" style="height:150px; width:220px"/></a></td>
         <td>שמורת אירוס הארגמן בנתניה<br /><a href="Israel/Iris_Reserve.aspx"><img src="pictures/Iris_Reserve.jpg" style="height:150px; width:220px"/></a></td>
         <td>ים המלח<br /><a href="Israel/Dead_Sea.aspx"><img src="pictures/Dead_Sea.jpg" style="height:150px; width:220px"/></a></td>
        </tr>       
       </table>
      </td>
     </tr>
     <tr>
      <td style="background-color:darkolivegreen; height:352px; text-align:center"><%=content %><%=updatePass %><br /><br /><br /><%=contact %><%=deleteUser %><br /><br /><br /><%=usersReport %></td>
     </tr>
     <tr>
      <td style="background-color:olivedrab; height:30px; text-align:center" colspan="6">אל תשכחו לטייל!</td>
     </tr>
    </table>
    </center>
   </div>
  </form>
</body>
</html>