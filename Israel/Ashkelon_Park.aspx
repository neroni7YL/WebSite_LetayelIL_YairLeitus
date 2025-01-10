<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ashkelon_Park.aspx.cs" Inherits="Ashkelon_Park" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Ashkelon Park</title>
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

       <h1 style="color:darkolivegreen">גן לאומי אשקלון</h1>
       <p style="font-size:large; text-align-last:right; padding-right:4em">
          הגן הלאומי אשקלון הוא גן לאומי השוכן על רכס הכורכר שלחופו של הים התיכון בדרום-מערבה של <br />
          העיר אשקלון. 4000 שנה של תרבות אנושית מתועדת בחפירות ארכיאולוגיות הנמשכות גם בהווה וניתן <br />
          לראות את שרידי העתיקות כגון: שער העיר הכנענית, הבזיליקה הרומית ועמודי השיש, שרידי הכנסייה <br />
          ויותר מ 60 בארות אשר שימשו את תושבי המקום לדורותיהם.  <br />
          הגן הלאומי הוא פנינת טבע עשירה בחי וצומח ייחודיים ומגוון בתי גידול, החל מרצועת חוף הים, <br />
          שטחי החולות, ומתחם תל אשקלון המאפשרים למגוון רחב של חי וצומח להתפתח ולהישמר בסביבה האורבאנית. <br />
          חשיבותו של הגן כריאה ירוקה - מקום מיוחד, וקסום של טבע בלב העיר. במיוחד בתקופה זו של עיור מואץ <br />           
          וצמצום השטחים הפתוחים, חשיבות הטבע בסביבה האורבאנית גבוהה ביותר.  <br />
          הביקור בגן הלאומי מתאים לכל המשפחה, בכל עונות השנה. תוכלו למצוא בו מסלולי טיול  <br />
          (שביל המצוק והחומה, שביל החולות), מדשאות נרחבות שמתאימות לפיקניק, שרידי עתיקות מרתקים וחוף <br />
          רחצה מוכרז בעונה. <br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>תמונות גן לאומי אשקלון</h3></td>
        </tr>
        <tr>
         <td><img src="../pictures/Ashkelon_Park.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Ashkelon_Park1.jpg" style="height:120px; width:180px"/></td>
         <td><img src="../pictures/Ashkelon_Park2.jpg" style="height:120px; width:180px"/></td>         
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
