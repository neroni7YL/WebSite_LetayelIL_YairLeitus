<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Central_Park.aspx.cs" Inherits="Central_Park" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Central Park</title>
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

       <h1 style="color:darkolivegreen">סנטרל פארק</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           העיר ניו יורק היא ליבה הפועם של אמריקה התזזיתית אולם סנטרל פארק, הריאה הירוקה הענקית <br />
           של הכרך הגדול, היא המקום בעיר, להירגע ולנוח. עם בוא האביב והקיץ, נשטף הפארק בצבעי ירוק <br />
           ובאלפי מטיילים ותושבים, המגיעים ליהנות ולבלות. בתוך השבילים הקטנים, המסתעפים, ישנו עולם <br />
           ומלואו: מופעי מוזיקה קסומים, פעילויות כיפיות ונקודות תצפית מרהיבות, המשקיפות על האגם <br />
           ועל מבנים ארכיטקטוניים עוצרי נשימה. הפארק משתרע לאורך כארבעה קילומטרים - מרחוב 59 <br />
           לרחוב 110 ורוחבו 800 מטרים - מהשדרה החמישית לשמינית. הפארק מלא חיים, צבעים והשראה. <br />
           בנוסף לכך, ניתן לשכור אופניים בפארק ולדווש בפארק, באופן עצמאי או קבוצתי. <br />           
           בטיול העצמאי תיהנו לנווט בעצמכם ולעצור איפה שתרצו. אך טיולי האופניים הקבוצתיים <br />
           מציעים חוויה אחרת. פרט לערך המוסף הקיים ברכיבה מודרכת, הרכיבה בקבוצה תאפשר לכם גם <br />
           אנשים חדשים. בנוסף, ניתן להצטרף לטיול אופניים מודרך בסנטרל פארק, במהלכו תוכלו ללמוד <br />
           על האזורים השונים של הפארק ואורכו כ-2.5 שעות. <br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות סנטרל פארק</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Central_Park.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Central_Park1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Central_Park2.jpg" style="height:120px; width:180px"/></td>         
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
