<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%">
<head runat="server">
    <title>Letayel-IL</title>
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
       <h1 style="color:darkolivegreen">ברוכים הבאים ל- Letayel-IL</h1>
       <p style="font-size:large; text-align-last:right; padding-right:9em">
           אתר Letayel-IL נועד כדי לעזור לכם למצוא את היעדים הפופולריים והמומלצים<br />
           ביותר לטיול ברחבי הארץ והעולם. אנחנו ב- Letayel-IL ממליצים על יעדי טיול<br />
           הנמצאים לרוב בחיק הטבע או באתרים היסטוריים במקומות היפים ביותר בעולם<br />
           על ידי מתן מידע איכותי ומקיף שכתוב בצורה ברורה ופשוטה.<br />
           אנחנו ב- Letayel-IL מדגישים את החשיבות שבטיול ומאמינים כי אם מטיילים מגיעים<br />
           למקומות נפלאים ומיוחדים וכך נפתחים לטבע הרחב והמקומות המדהימים.<br />
           טיול הוא הזדמנות להיפתח לעולמות חדשים ויפים, להכיר, לראות, לחוות וכמובן ליהנות!<br />                                                                                                                                                                                                          
       </p>
       <br /><br />         
       <table style="text-align:center">
        <tr>
         <td colspan="3"><h3>יעדי טיול מומלצים!</h3></td>
        </tr>
        <tr>
         <td>הגנים הבהאיים בהר הכרמל<br /><a href="Israel/Terraces_Bahai.aspx"><img src="pictures/Terraces_Bahai.jpg" style="height:120px; width:180px"/></a></td>
         <td>ים המלח<br /><a href="Israel/Dead_Sea.aspx"><img src="pictures/Dead_Sea.jpg" style="height:120px; width:180px"/></a></td>
         <td>הר החרמון<br /><a href="Israel/Hermon.aspx"><img src="pictures/Hermon.jpg" style="height:120px; width:180px"/></a></td>
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
