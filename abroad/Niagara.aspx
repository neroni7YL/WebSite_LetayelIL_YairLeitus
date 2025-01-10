<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Niagara.aspx.cs" Inherits="Niagara" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Niagara Falls</title>
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

       <h1 style="color:darkolivegreen">מפלי הניאגרה</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           מפלי הניאגרה הם אחד המקומות הפופולאריים בעולם עבור מטיילים ומשפחות. מדובר בתופעת טבע <br />
           מדהימה והאתר נחשב לאחד מפלאי עולם. מפלי הניאגרה (Niagara Falls) המפורסמים נשפכים בעוצמה <br />
           מתוך נהר הניאגרה, העובר בדיוק בגבול בין מדינת ניו יורק שבארה"ב, לבין פרובינציית אונטריו שבקנדה. <br />
           המפלים האמריקנים משתרעים על שטח קטן יותר והם נחשבים פחות מרשימים לעומת המפלים הקנדים. <br />
           הצד הקנדי מרשים ומפותח יותר מאשר הצד האמריקאי וקוסם הרבה יותר לתיירים המגיעים לאזור. <br />
           ניתן לראות את המפלים באמצעות מגדלי תצפית, מערות, סירות, רכבל ועוד. חוויה מיוחדת במינה היא לראות <br />
           את המפלים מוארים בלילה, וכל יום שישי וראשון בערב, יש זיקוקים מעל המפלים. <br />           
           אטרקציה מומלצת במיוחד היא Maid of the Mist, סירת מעבורת, החוצה את נהר הניאגרה מתחת למפלים. <br />
           ההפלגה אורכת חצי שעה, מדובר בחוויה חד פעמית ויוצאת דופן המתרחשת ממש מתחת למפלים, ולכן מקבלים <br />
           מעילי גשם; אך לאמיצים מומלץ לעלות ל-Hurricane Dock, שנמצא ממש מתחת למפל כך שבעצם מרגישים את <br />
           עוצמת המפל ישירות על הראש. <br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות מפלי הניאגרה</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Niagara.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Niagara1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Niagara2.jpg" style="height:120px; width:180px"/></td>         
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
