<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hermon.aspx.cs" Inherits="Hermon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Mount Hermon</title>
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

       <h1 style="color:darkolivegreen">הר החרמון</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           החרמון הוא ללא ספק מהאתרים היפים והמעניינים בארץ. ההר מחזיק במספר שיאים: הוא מהווה <br />
           את הנקודה הצפונית ביותר בישראל, המקום הגבוה בארץ וגם אתר הסקי היחיד במדינה. החרמון <br />
           יפה בכל עונות השנה, אבל בחורף הכל נראה אחרת, כאשר השלג העמוק מכסה את כולו. <br />
           החרמון הוא קמר ענק של סלע גיר. הוא מתחלק כיום ברובו בין סוריה ללבנון, אך חלק קטן ממנו מצוי <br />
           בשטח מדינת ישראל. שיא פסגתו נמצא בצד הסורי, בגובה של 2,814 מטר מעל פני הים, כאשר בצד <br />
           הישראלי שיא גובהו הוא 2,224 מטר. <br />
           במשך החורף משמשים מורדות ההרים לגלישה בסקי ובסנובורד במבחר מסלולי גלישה לגולשים <br />           
           מתחילים ומתקדמים. למבקרים אשר אינם עוסקים בסקי מציע האתר אפשרויות בילוי מגוונות-  <br />
           שעשועי שלג, גלישה לילדים במזחלות שלג, חוויה לכל המשפחה במזחלות הרים “אקסטרים” ונסיעה <br />
           ברכבל מבקרים לפסגת החרמון. לרשות המבקרים באתר מערך מזנונים, כולל מזנון כשר וחנויות. <br />
           לרכישת ציוד חורף וסקי. <br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות אתר החרמון</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Hermon.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Hermon1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Hermon2.jpg" style="height:120px; width:180px"/></td>         
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
