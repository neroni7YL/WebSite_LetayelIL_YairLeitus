using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    public string st1, st2, st3, st4, st5, st6, fn, ln, areacodeN, phone, email, textM;
    public string userMsg = "";
    static bool IsNumeric(string str)
    {
        string strcheck = "0123456789";
        for (int i = 0; i < str.Length; i++)
        {
            if (strcheck.IndexOf(str[i]) < 0)                            
            {
                return false;
            }
        }
        return true;
    }
    public bool IsValid()
    {
        bool valid = true;
        fn = Request.Form["name"];
        ln = Request.Form["lastname"];
        areacodeN = Request.Form["areacodeN"];
        phone = Request.Form["phone"];
        email = Request.Form["email"];
        textM = Request.Form["textM"];
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
        //תקינות קידומת
        if (areacodeN == "areacode")
        {
            st3 = "חובה לבחור קידומת";
            valid = false;
        }
        //תקינות מספר טלפון
        if (phone == "")
        {
            st4 = "חובה להזין מספר טלפון";
            valid = false;
        }
        else if (IsNumeric(phone))
        {
            if (phone.Length != 7)
            {
                st4 = "מספר הטלפון אינו תקין";
                valid = false;
            }
        }
        else
        {
            st4 = "מספר הטלפון יכלול מספרים בלבד";
            valid = false;
        }
        if (email == "")
        {
            st5 = "חובה להזין דואר אלקטרוני";
            valid = false;            
        }
        else if (email.IndexOf("@") < 0)
        {
            st5 = "דואר אלקטרוני אינו תקין";
            valid = false;           
        }
        //בדיקת שדה הודעה
        if (textM == "")
        {
            st6 = "יש למלא את השדה";
            valid = false;
        } 
        else if (textM.Length < 15)
        {
            st6 = "ההודעה קצרה מדי";
            valid = false;
        }
        else if (textM.Length > 80)
        {
            st6 = "ההודעה לא תכלול יותר מ-80 תווים";
            valid = false;
        }      
        return valid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {      
        if (IsPostBack)
        {
            if (IsValid())
            {
                userMsg = fn + " " + ln + " קיבלנו את פרטיך בהצלחה וניצור עימך קשר בקרוב";
            }
        }
    }
}