using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class signup : System.Web.UI.Page
{
    public string st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11,
        fn, ln, gen, monthB, dayB, yearB, username, pass1, pass2, tripL, tripN;
    public string RegStatus = "";

    static bool IsNumeric(string str)
    {
        string strcheck = "0123456789";
        for(int i=0; i < str.Length; i++)
        {
            if (strcheck.IndexOf(str[i]) < 0)
          //if (strcheck.IndexOf('str[0] = 2') < 0) >> false --> return true. הערך שיוחזר הוא 2 מאחר ואינדקס המספר במחרוזת הוא 2
          //if ("0123456789".IndexOf('str[0] = a') < 0) >> true --> return false. הערך שיוחזר הוא 1- מאחר והספרה לא נמצאת במחרוזת                
            {
                return false;
            }
        }
        return true;
    }
    static bool IsRegular(string str)
    {
        string strcheck = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_";
        string strcheck1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";       
        for (int i = 0; i < str.Length; i++)
        {
            if (strcheck.IndexOf(str[i]) < 0)
            {
                return false;
            }
        }
        if (strcheck1.IndexOf(str[0]) < 0)
        {
            return false;
        }      
        return true;
    }
    public bool IsValid()
    {
        bool valid = true;
        fn = Request.Form["name"];
        ln = Request.Form["lastname"];
        gen = Request.Form["gender"];
        monthB = Request.Form["monthB"];
        dayB = Request.Form["dayB"];
        yearB = Request.Form["yearB"];
        username = Request.Form["username"];
        pass1 = Request.Form["password1"];
        pass2 = Request.Form["password2"];
        tripL = Request.Form["tripL"];
        tripN = Request.Form["tripN"];
        //תקינות שם פרטי
        if (fn == "")
        {
            st1 = "חובה להזין שם פרטי";
            valid = false;
        }
        else if (fn.Length < 2 || fn.Length > 15)
        {
            st1 = "יש להזין ערך שעורכו בין 2 ל-15 תווים";
            valid = false;
        }       
        //תקינות שם משפחה
        if (ln == "")
        {
            st2 = "חובה להזין שם משפחה";
            valid = false;
        }
        else if (ln.Length < 2 || ln.Length > 15)
        {
            st2 = "יש להזין ערך שעורכו בין 2 ל-15 תווים";
            valid = false;
        }        
        //בדיקת זכר/נקבה
        if (gen == null)
        {
            st3 = "חובה לבחור מין";
            valid = false;
        }
        //תקינות תאריך לידה
        if (monthB == "month")//חודש
        {
            st4 = "חובה לבחור חודש";
            valid = false;
        }
        if (dayB == "day")//יום
        {
            st5 = "חובה לבחור יום";
            valid = false;
        }
        if (yearB == "")//שנה
        {
            st6 = "חובה להזין שנת לידה";
            valid = false;
        }
        else if (IsNumeric(yearB))
        {
            if (int.Parse(yearB) < 1930 || int.Parse(yearB) > 2012)
            {
                st6 = "שנת הלידה אינה עדכנית";
                valid = false;
            }
        }
        else
        {
            st6 = "שנת הלידה תכלול מספרים בלבד";
            valid = false;
        }
        //תקינות שם משתמש
        if (username == "")
        {
            st7 = "חובה להזין שם משתמש";
            valid = false;
        }
        else if (IsRegular(username))
        {
            if(username.Length < 5 || username.Length > 16)
            {
                st7 = "שם המשתמש יכיל בין 5 ל-16 תווים";
                valid = false;
            }
        }
        else
        {
            st7 = "שם משתמש יכיל אותיות לועזיות, מספרים, או קו תחתון ויתחיל באות לועזית";
            valid = false;
        }            
        //תקינות סיסמא
        if (pass1 == "")
        {
            st8 = "חובה להזין סיסמא";
            valid = false;
        }
        else if (pass1.Length < 8 || pass1.Length > 20)
        {
            st8 = "סיסמא תכיל בין 8 ל-20 תווים";
            valid = false;
        }       
        //תקינות אימות סיסמא
        if (pass2 == "")
        {
            st9 = "חובה לאמת סיסמא";
            valid = false;
        }
        else if (pass1 != pass2)
        {
            st9 = "אימות הסיסמא אינו תקין";
            valid = false;
        }
        //תקינות בחירת הטיול האחרון
        if (tripL == "trip")
        {
            st10 = "חובה לבחור את מקום טיולך האחרון";
            valid = false;
        }
        //תקינות היעד הבא
        if (tripN == "")
        {
            st11 = "חובה להזין את יעד הטיול הבא";
            valid = false;
        }
        else if (tripN.Length < 2 || tripN.Length > 20)
        {
            st11 = "יעד הטיול אינו תקין";
            valid = false;
        }
        return valid;            
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //הגדרת משתנים - שם מסד נתונים, שם טבלה      
        string sqlS = "";
        string fileName = "";
        string tableName = "";
        string selectQuery = "";
        if (IsPostBack)// או if (Request.Form["submit"] != null)
        {
            if (IsValid())
            {
                //הכנת הנתונים לכתיבה בבסיס הנתונים
                fileName = "DataBase.mdb";//שם מסד הנתונים
                tableName = "UsersData";//שם הטבלה
                selectQuery = "SELECT * FROM " + tableName + " WHERE userName='" + username + "'";//קריאה - חיפוש רשומה מסוימת בהתאם לערך מסוים, במקרה זה קריאה לפי שם המשתמש              
                if (MyAdoHelper.IsExist(fileName, selectQuery))// אם המשתמש קיים
                {
                    RegStatus = ("קיים כבר משתמש");
                }
                else
                {
                    //הוספת רשומה חדשה לטבלה – כתיבה בבסיס הנתונים
                    sqlS = "INSERT INTO UsersData(userName,userPass,fName,lName,gender,birthYear,birthMonth,birthDay,lastTrip,nextTrip) VALUES('" + username + "', '" + pass1 + "', '" + fn + "', '" + ln + "', '" + gen + "', '" + yearB + "', '" + monthB + "', '" + dayB + "', '" + tripL + "', '" + tripN + "')";
                    MyAdoHelper.DoQuery(fileName, sqlS);
                    Session["user"] = username;
                    Response.Redirect("HomePage.aspx");
                }                                                         
            }
        }             
    }
}