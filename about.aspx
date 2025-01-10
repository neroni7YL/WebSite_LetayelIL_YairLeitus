<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>About</title>
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
<body style="background-image:url(pictures/background.jpg); background-repeat:no-repeat; background-size:cover">
  <form id="form1" runat="server">
   <div>
    <span style="color:white; font-size:x-large; border:solid wheat; border-radius:5%"><b><%=message %></b></span>
    <center>
    <h1 style="color:white">Letayel-IL</h1>              
    <table style="height:730px; width:1100px" border="1" dir="rtl">
     <tr style="background-color:darkolivegreen; height:50px; text-align:center">
      <th style="width:150px"><a href="HomePage.aspx">דף הבית</a></th>
      <th style="width:110px"><a href="Israel.aspx">בארץ</a></th>
      <th style="width:110px"><a href="abroad.aspx">בעולם</a></th>
      <th style="width:110px"><%=signup %><%=shop %></th>
      <th style="width:110px"><%=login %><%=logout %></th>       
      <th style="width:150px"><a href="about.aspx">אודות</a></th>
     </tr>
     <tr align="center">
      <td style="background-color:darkolivegreen; height:290px"><marquee style="height:170px" direction="up"><b>ברוכים הבאים</b><br/>הטיול החודשי<br/><b>מפלי הניאגרה - קנדה</b><br /><br />לפרטים נוספים כנסו - בעולם<br />אמריקה!!!</marquee></td>
      <td style="background-color:white; width:750px; height:600px" colspan="5" rowspan="2">
       <h1 style="color:darkolivegreen">About Letayel-IL</h1>
       <p style="font-size:large; text-align-last:right; padding-right:9em">           
           האתר Letayel-IL נוצר כפרויקט גמר ב"מדעי המחשב" - תכנות בסביבת האינטרנט<br />
           על ידי יאיר לייטוס - תלמיד בית הספר טשרניחובסקי בנתניה.<br />
           האתר מיועד לעזור לקהל הרחב למצוא את היעדים הפופולריים והמומלצים לטיול,<br />
           תוך כדי מתן מידע איכותי ומקיף על היסטוריית המקום והאטרקציות בו.<br />
           בנוסף לכך, עם ההתחברות לאתר ניתן להיכנס לחנות Letayel-IL בה ניתן למצוא<br />
           ציוד ואביזרים למחנאות ולטיולים. המשך גלישה נעימה וכמובן אל תשכחו לטייל!<br />
           <br />                                                                                                                                                                                                          
       </p>
       <br /><br />
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>יעדי טיול מומלצים!</h3></td>
        </tr>
        <tr>
         <td>טאג' מהאל<br /><a href="abroad/Taj_Mahal.aspx"><img src="pictures/Taj_Mahal.jpg" style="height:120px; width:180px"/></a></td>
         <td>סנטרל פארק<br /><a href="abroad/Central_Park.aspx"><img src="pictures/Central_Park.jpg" style="height:120px; width:180px"/></a></td>
         <td>היער השחור<br /><a href="abroad/Black_Forest.aspx"><img src="pictures/Black_Forest.jpg" style="height:120px; width:180px"/></a></td>
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
    <center/>
   </div>
  </form>
</body>
</html>