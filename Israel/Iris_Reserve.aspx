<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Iris_Reserve.aspx.cs" Inherits="Iris_Reserve" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Iris Reserve</title>
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

       <h1 style="color:darkolivegreen">שמורת אירוס הארגמן בנתניה</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
          שמורה עירונית עם פריחה מדהימה של אירוס הארגמן, הפורח מדי שנה החל מאמצע חודש ינואר ואילך. <br />
          השמורה משתרעת בין שתי גבעות כורכר בלב אזור פרדסים ושדות, המהוות את אחד השרידים האחרונים <br />
          לנוף הטבעי של מישור החוף. כדי שאירוס הארגמן ימשיך להתקיים, יש לשמור על רצף גיאוגרפי בין <br />
          גבעות האירוסים השונות, המאוימות על ידי תכניות רבות של בינוי ופיתוח. החברה להגנת הטבע, <br />
          פורום גבעות הכורכר ותושבי האזור פועלים מזה זמן רב לשמירה על רצף בין גבעות הכורכר, שיאפשר <br />
          לאירוס הארגמן ופרחי בר אחרים להתקיים וישאיר לתושבי המרכז קצת טבע 'מתחת לאף'. <br />
          הטיול בשמורה נוח ובמקום מספר שבילים מוסדרים להליכה בינות לדיונות ולפריחות. השביל הראשי, <br />           
           מתחילים ומתקדמים. למבקרים אשר אינם עוסקים בסקי מציע האתר אפשרויות בילוי מגוונות- <br />
           שעשועי שלג, גלישה לילדים במזחלות שלג, חוויה לכל המשפחה במזחלות הרים “אקסטרים” ונסיעה <br />
           המסומן כחול מוביל אתכם עד לחוף הים. זה גם תוואי שביל ישראל בקטע זה.  <br />
           טיול עד לשפת הים יאפשר לנו לפגוש גם פרגים, קחוון החוף, מרסייה יפהפיה, סביונים, אספסת הים ועוד. <br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות שמורת אירוס הארגמן</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Iris_Reserve.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Iris_Reserve1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Iris_Reserve2.jpg" style="height:120px; width:180px"/></td>         
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
