<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
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
    </style>    
</head>
<body style="background-color:darkolivegreen">
  <form id="form1" runat="server">       
   <div style="border:5px double green; border-radius:5%; background-color:wheat; margin:0 25% 0 25%; padding:0 30px 30px 0"> 
    <center>
    <h1 style="color:darkgreen">טופס הרשמה</h1>
    <table border="0" style="width:420px; margin-right:50px"> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st1 %></td>
      <td><input style="background-color:white" dir="rtl" type="text" name="name" id="name" value="<%=fn %>"/></td>
      <td style="text-align:center">שם פרטי</td>       
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st2 %></td>
      <td><input style="background-color:white" dir="rtl" type="text" name="lastname" id="lastname" value="<%=ln %>"/></td>
      <td style="text-align:center">שם משפחה</td>
     </tr>           
     <tr dir="rtl">
      <td style="color:darkred; width:120px" rowspan="2"><%=st3 %></td>
      <td><input type="radio" name="gender" id="male" value="זכר"/>זכר</td>     
      <td style="text-align:center" rowspan="2">מין</td>
     </tr>  
     <tr dir="rtl">                   
      <td><input type="radio" name="gender" id="female" value="נקבה"/>נקבה</td>     
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st4 %><br /><%=st5 %><br /><%=st6 %></td>
      <td>                        
       <select name="monthB" style="width:54px">
        <option value="month">חודש</option>
        <option>ינואר</option>
        <option>פברואר</option>
        <option>מרץ</option>
        <option>אפריל</option>
        <option>מאי</option>
        <option>יוני</option>
        <option>יולי</option>
        <option>אוגוסט</option>
        <option>ספטמבר</option>
        <option>אוקטובר</option>
        <option>נובמבר</option>
        <option>דצמבר</option>
       </select>
       <select name="dayB">
        <option value="day">יום</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
        <option>12</option>
        <option>13</option>
        <option>14</option>
        <option>15</option>
        <option>16</option>
        <option>17</option>
        <option>18</option>
        <option>19</option>
        <option>20</option>
        <option>21</option>
        <option>22</option>
        <option>23</option>
        <option>24</option>
        <option>25</option>
        <option>26</option>
        <option>27</option>
        <option>28</option>
        <option>29</option>
        <option>30</option>
        <option>31</option>
       </select> 
       שנה <input style="width:37px" dir="ltr" name="yearB" id="yearB" value="<%=yearB %>"/>     
      </td>
      <td style="text-align:center">תאריך לידה</td>
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st7 %></td>
      <td><input style="background-color:white" dir="ltr" type="text" name="username" id="username" value="<%=username %>"/></td>
      <td style="text-align:center">שם משתמש</td>
     </tr> 
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st8 %></td>
      <td><input style="background-color:white" dir="ltr" type="password" name="password1" id="password1" value="<%=pass1 %>"/></td>
      <td style="text-align:center">סיסמא</td>
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st9 %></td>
      <td><input style="background-color:white" dir="ltr" type="password" name="password2" id="password2" value="<%=pass2 %>"/></td>
      <td style="text-align:center">אימות סיסמא</td>
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st10 %></td>
      <td>
       <select name="tripL">
        <option value="trip">מקום הטיול</option>
        <option>צפון הארץ</option> 
        <option>מרכז הארץ</option> 
        <option>דרום הארץ</option>
        <option>אירופה</option>
        <option>אסיה</option>
        <option>אמריקה</option>
        <option>לא טיילתי לאחרונה</option>
       </select>
      </td>
      <td style="text-align:center">טיולך האחרון</td>
     </tr>
     <tr dir="rtl">
      <td style="color:darkred; width:120px"><%=st11 %></td>      
      <td><input style="background-color:white" dir="rtl" type="text" name="tripN" id="tripN" value="<%=tripN %>"/></td> 
      <td style="text-align:center">יעד הטיול הבא</td>
     </tr>      
    </table>
    <br />
    <input style="color:black" type="reset" name="reset" id="reset" value="נקה" />               
    <br /> <br />
    <input style="color:black" type="submit" name="submit" id="submit" value="הירשם" />       
    <br /><br />
    <a href="login.aspx" style="font-size:larger">כבר רשום - לכניסה לחץ כאן</a>
    <br /><br />
    <a href="HomePage.aspx" style="font-size:larger">חזרה לדף הבית</a>
    </center>
   </div>
  </form>
     <center>
     <h1><%=RegStatus %></h1>
     </center>
</body>
</html>
