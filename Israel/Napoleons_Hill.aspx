<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Napoleons_Hill.aspx.cs" Inherits="Napoleons_Hill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Napoleon's Hill</title>
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

       <h1 style="color:darkolivegreen">גבעת נפוליאון</h1>
       <p style="font-size:large; text-align-last:right; padding-right:5em">
           בגבעת נפוליאון, שנמצאת בצפון תל אביב, תוכלו ליהנות מתצפית פנורמית מדהימה לכל הכיוונים, <br />
           ולמרות שנשקפים ממנו כל מגדלי הענק של תל אביב ורמת גן, על הגבעה תרגישו מנותקים מהכל. <br />
           גבעת נפוליאון היא תל ארכאולוגי ששוכן בצפון תל אביב, מדרום לנחל הירקון וממזרח לנחל איילון. <br />
           במקום תמצאו ספסלים, מדשאות ושלל נקודות מצוינות לפיקניק, וגם פריחת שקדיות נהדרת בעונה. <br />
           הגבעה קרובה גם לנחל הירקון ולשבע תחנות, וכיף לצאת כאן לטיול רגלי או באופניים. <br />
           בתל, שגובהו 38 מטרים מעל פני הים, התגלו שרידי ישוב משנת 2,700 לפני הספירה, שהעיקרי שבהם <br />
           הוא בור של מערכת המים הכנענית. הגבעה נקראת כיום על שם נפוליאון, שחנה כאן את צבאו בעת <br />           
           המצור על העיר יפו בשנת 1799, אך היא מכונה גם תל ג'רישה ותל גריסה, על שם הכפר הערבי <br />
           ג'רישה ששכן ליד אתר שבע טחנות. <br />                                                                                                                                                                                                                    
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות גבעת נפוליאון</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Napoleons_Hill.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Napoleons_Hill1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Napoleons_Hill2.jpg" style="height:120px; width:180px"/></td>         
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
