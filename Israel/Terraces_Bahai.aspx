<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Terraces_Bahai.aspx.cs" Inherits="Terraces_Bahai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Terraces Bahai</title>
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

       <h1 style="color:darkolivegreen">הגנים הבהאיים בהר הכרמל</h1>
       <p style="font-size:large; text-align-last:right; padding-right:4em">
           להר הכרמל, המקודש לנוצרים וליהודים כאחד, נודעת חשיבות גדולה גם עבור הבהאיים והוא משמש <br />
           כמרכזם הרוחני והמנהלי. בלב מורדות הכרמל נמצא מקדשו של הבאב, הקדוש המבשר של הדת הבהאית.  <br />
           המקדש מוקף בגנים תלויים מרהיבי עין המפוסלים בצלע ההר. הגנים עוצבו כגנים תלויים לאורך  <br />
           מורדות הכרמל, היוצרים רקע הולם ודרכי גישה המובילות אל המקדש, אחד המקומות הקדושים ביותר לבהאיים.  <br />
           הגנים התלויים מעוצבים בתשעה מעגלים קונצנטריים, הנראים כגלים הנובעים מהמקדש שבמרכזם.  <br />
           כל הקווים המעוגלים ממקדים את העין ואת הלב לכיוון המקדש שבמרכזם. שילוב אלמנטים של אור ומים ממלאים  <br />
           תפקיד חשוב מרכזי בעיצוב הגנים, נוסף על עיטורים נוספים המעשירים את הנוף.  <br />           
           השביל המרכזי של הגנים מוקף משני צדדיו בגנים מטופחים. הגינון הקפדני לאורך השביל מתחלף בהדרגה  <br />
           בצמחיה טבעית מגוונת של עצים ופרחי בר מקומיים, שנשתלו במיוחד כדי ליצור מחדש את הנוף הטבעי של האזור.  <br />
           הצמחייה המגוונת והעשירה המתפרשת על שטח נרחב של הר הכרמל יוצרת שמורת טבע קטנה המושכת   <br />
           אליה בעלי חיים ותורמת לאיכות הסביבה.  <br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות הגנים הבהאיים</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Terraces_Bahai.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Terraces_Bahai1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Terraces_Bahai2.jpg" style="height:120px; width:180px"/></td>         
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
