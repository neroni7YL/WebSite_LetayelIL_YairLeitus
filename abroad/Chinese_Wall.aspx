<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chinese_Wall.aspx.cs" Inherits="Chinese_Wall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Chinese Wall</title>
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

       <h1 style="color:darkolivegreen">החומה הסינית</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           החומה הסינית נחשבת לאחד משבעת פלאי העולם העתיק ומשתרעת על פני למעלה מ-6,000 <br />
           קילומטרים של אבן ואוצרת בתוכה היסטוריה ארוכה של שושלות סיניות שהתחלפו. <br />
           החומה הסינית היא אחת החומות המוכרות בעולם כולו, והיא מהווה אתר תיירותי פופולארי.  <br />
           לאחר שסין הפכה למדינה המאפשרת תיירות נכנסת וכן לאחר ההכרה של ארגון אונסק"ו בחומת סין <br />
           הגדולה בשנת 1987 כאתר מורשת תרבותית עולמית, דואגים שלטונות סין לשמר ולשפץ אותה. <br />
           אורכה מגיע ל-6,400 קילומטרים, רוחבה מגיע בחלקים שונים שלה לתשעה מטרים וגובהה ל-7.5 מטרים. <br />
           יש אפשרות לעלות אל החומה בנסיעה ברכבל או בעלייה תלולה ברגל. למיטיבי הלכת מומלץ לעלות <br />           
           באמצעות הרכבל הפתוח, שמוביל לחלק הנמוך בחומה ומשם תטפסו במעלה החומה. מי שמתקשה בטיפוס <br />
           יוכל להגיע עם הרכבל לחלק הגובה ולרדת ברגל, או לחזור ברכבל גם כן. אך שני המסלולים אינם קלים. <br />                                                                                                                                                                                                                     
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות החומה הסינית</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Chinese_Wall.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Chinese_Wall1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Chinese_Wall2.jpg" style="height:120px; width:180px"/></td>         
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
