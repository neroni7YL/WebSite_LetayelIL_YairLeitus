<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abroad.aspx.cs" Inherits="abroad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Abroad</title>
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
         <td colspan="3"><h3>יעדי טיול בעולם</h3></td>
        </tr>
        <tr style="height:50px">
         <td><h1>אמריקה</h1></td>
         <td><h1>אירופה</h1></td>
         <td><h1>אסיה</h1></td>
        </tr>
        <tr>
         <td>מפלי הניאגרה<br /><a href="abroad/Niagara.aspx"><img src="pictures/Niagara.jpg" style="height:150px; width:220px"/></a></td>
         <td>היער השחור<br /><a href="abroad/Black_Forest.aspx"><img src="pictures/Black_Forest.jpg" style="height:150px; width:220px"/></a></td>
         <td>הטאג' מהאל<br /><a href="abroad/Taj_Mahal.aspx"><img src="pictures/Taj_Mahal.jpg" style="height:150px; width:220px"/></a></td>
        </tr>
        <tr>
         <td>סנטרל פארק<br /><a href="abroad/Central_Park.aspx"><img src="pictures/Central_Park.jpg" style="height:150px; width:220px"/></a></td>
         <td>סנט מוריץ<br /><a href="abroad/Sankt_Moritz.aspx"><img src="pictures/Sankt_Moritz.jpg" style="height:150px; width:220px"/></a></td>
         <td>החומה הסינית<br /><a href="abroad/Chinese_Wall.aspx"><img src="pictures/Chinese_Wall.jpg" style="height:150px; width:220px"/></a></td>
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
