<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sankt_Moritz.aspx.cs" Inherits="Sankt_Moritz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Sankt Moritz</title>
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

       <h1 style="color:darkolivegreen">סנט מוריץ</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           סנט מוריץ היא עיירת נופש יוקרתית בעמק אנגדין בשווייץ והוא אחד מאתרי הסקי הנחשבים של <br />
           שוויץ, המושך אליו מבקרים רבים מהעולם כולו. לאתר שני חלקים נפרדים: Dorf הוא העיקרי שבהם, <br />
           מעל האגם. בצידו השני של האגם נמצא St. Moritz Bad. הסקי פאס של אנגדין, מכסה שטח של 350 קמ"ר <br />
           וכולל בנוסף למדרונות אתר סנט מוריץ את אזורי הסקי, Corviglia והקרחון Diavolezza Glacier <br />
           ומבטיח גלישה לכל הרמות. פעילויות ספורט חורף באגם הקפוא כוללות גולף ומירוצי סוסים. <br />
           אפשר למצוא בסנט מוריץ מגוון של מקומות לינה, מסעדות ובארים. במתחמים באזור תוכלו לשעות <br />
           במקומות שונים כגון: בריכה, סאונה, טניס, סקווש, מוזיאון, ספא בריאותי, קולנוע, שיערוי  <br />           
           אירובי ומרכז יופי ובריאות. מי שירצה לגוון יוכל גם לצאת לטיולים רגליים, דאייה, טיפוס על <br />
           קרחונים, מסלולי מזחלות מסוגים שונים, רכיבה ומירוצי סוסים, פולו, קריקט, מצנחי רחיפה ועוד. <br />                                                                                                                                                                                                                      
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות סנט מוריץ</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Sankt_Moritz.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Sankt_Moritz1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Sankt_Moritz2.jpg" style="height:120px; width:180px"/></td>         
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
