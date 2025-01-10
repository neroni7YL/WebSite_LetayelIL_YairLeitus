<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dead_Sea.aspx.cs" Inherits="Dead_Sea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Dead Sea</title>
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

       <h1 style="color:darkolivegreen">ים המלח</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           ים המלח הוא אגם מלח חסר מוצא לים, הנמצא בתחום הבקע הסורי-אפריקני ובמרכזו עובר הגבול <br />
           בין ישראל לירדן. פני ים המלח וחופיו נמצאים בגובה 423 מטר (1,388 רגל) מתחת לפני הים, מה <br />
           שהופך אותו למקום הנמוך ביותר בעולם הנמצא על פני היבשה. <br />
           ריכוז המלחים בים המלח הוא גבוה במיוחד ועומד על 34.2% ונחשב לאחד האגמים המלוחים בעולם. <br />
           ריכוז המלח הגבוה במיוחד של ים המלח מאפשר לאנשים לצוף בו בקלות בשל יכולות ציפה טבעית. <br />
           אזור ים המלח הפך למרכז למחקר וטיפול בבריאות ממספר סיבות. לתכולת המינרלים הגבוהה שבמים, <br />
           לתכולה הנמוכה ביותר של אבק ואלרגנים אחרים המצויה באוויר שבאזור, לקרינה האולטרה-סגולה   <br />           
           המופחתת באזור וללחץ האטמוספרי הגבוה ביותר בעומק רב זה, יש השפעות בריאותיות טובות על <br />
           מחלות ומצבי בריאות ספציפיים. <br />
           בנוסף לכך, האזור מלא במסלולי טיולים מהנים, בהם ניתן לצעוד במהלך היום, לפגוש חיות בר <br />
           וליהנות מהצמחייה העשירה והמגוונת. וכמובן אין לשכוח את בוץ ים המלח העשיר במינרלים  <br /> 
           ונחשב לבעל תכונות רפואיות. <br />                                                                                                                                                                                                         
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות ים המלח</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Dead_Sea.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Dead_Sea1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Dead_Sea2.jpg" style="height:120px; width:180px"/></td>         
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
