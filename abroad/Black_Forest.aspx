<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Black_Forest.aspx.cs" Inherits="Black_Forest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Black Forest</title>
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
<body style="background-image:url(../pictures/background.jpg); background-repeat:no-repeat; background-size:cover">
  <form id="form1" runat="server">
   <div>
    <span style="color:white; font-size:x-large; border:solid wheat; border-radius:5%"><b><%=message %></b></span>   
    <center> 
    <h1 style="color:white">Letayel-IL</h1>               
    <table style="height:730px; width:1100px" border="1" dir="rtl">
     <tr style="background-color:darkolivegreen; height:50px; text-align:center">
      <th style="width:150px"><a href="../HomePage.aspx">דף הבית</a></th>
      <th style="width:100px"><a href="../Israel.aspx">בארץ</a></th>
      <th style="width:100px"><a href="../abroad.aspx">בעולם</a></th>
      <th style="width:100px"><%=signup %><%=shop %></th>
      <th style="width:100px"><%=login %><%=logout %></th>
      <th style="width:150px"><a href="../about.aspx">אודות</a></th>
     </tr>
     <tr align="center">
      <td style="background-color:darkolivegreen; height:290px"><marquee style="height:170px" direction="up"><b>ברוכים הבאים</b><br/>הטיול החודשי<br/><b>מפלי הניאגרה - קנדה</b><br /><br />לפרטים נוספים כנסו - בעולם<br />אמריקה!!!</marquee></td>
      <td style="background-color:white; width:750px; height:600px" colspan="5" rowspan="2">

       <h1 style="color:darkolivegreen">היער השחור</h1>
       <p style="font-size:large; text-align-last:right; padding-right:4em">
          היער השחור הוא אחד מיעדי התיירות המובילים של גרמניה והוא יעד מושלם לחופשה משפחתית <br />
          המציע לכל המשפחה מגוון עצום של אטרקציות מאתגרות, משעשעות, מסקרנות ומסעירות. <br />
          עיקר העניין באזור זה, כמתבקש משמו, הוא הטבע והנופים. היער השחור הוא אחד היערות המרתקים, <br />
          הצבעונים והמגוונים ביותר בעולם. הטיול ברחבי היער השחור יזמן לכם מפגש עם ערים וכפרים ציוריים, <br />
          תושבים חברותיים, פולקלור, אגמים ובעיקר שעוני קוקיה - היער השחור מפורסם במלאכת הכנת שעוני הקוקיה <br />
          ולרוחב האזור ודאי תיתקלו באינספור בתי מלאכה שכאלה. ללא ספק זו תהיה המזכרת הטובה ביותר שתוכלו <br />
          להביא מהאזור. הערים באדן-באדן ו-פרייבורג הן הערים המרכזיות והיפות באזור בעוד האגמים היפים ביותר <br />
          כאן הם טיטיזי (Titisee) ואגם קונסטנץ, במרחק לא רב. <br />                                                                                                                                                                                                                                
       </p>
       <br /><br />              
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות היער השחור</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Black_Forest.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Black_Forest1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Black_Forest2.jpg" style="height:120px; width:180px"/></td>         
        </tr>
       </table>          
       <br /><br />
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
