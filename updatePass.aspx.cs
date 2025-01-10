using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class updatePass : System.Web.UI.Page
{
    public string st1, st2, st3, st4, username, pass, rePass1, rePass2;
    public string userMsg = "";
    public string message = "";
    public bool IsValid()
    {
        bool valid = true;
        username = Request.Form["username"];
        pass = Request.Form["password1"];
        rePass1 = Request.Form["rePassword1"];
        rePass2 = Request.Form["rePassword2"];
        if (username == "")
        {
            st1 = "יש להזין את שם המשתמש";
            valid = false;
        }
        else if (username.Length < 5 || username.Length > 16)
        {
            st1 = "שם המשתמש יכיל בין 5 ל-16 תווים";
            valid = false;
        }
        if (pass == "")
        {
            st2 = "יש להזין את הסיסמא הנוכחית";
            valid = false;
        }
        else if (pass.Length < 8 || pass.Length > 20)
        {
            st2 = "סיסמא תכיל בין 8 ל-20 תווים";
            valid = false;
        }
        if (rePass1 == "")
        {
            st3 = "חובה להזין את הסיסמא החדשה";
            valid = false;
        }
        else if (rePass1.Length < 8 || rePass1.Length > 20)
        {
            st3 = "סיסמא תכיל בין 8 ל-20 תווים";
            valid = false;
        }
        if (rePass2 == "")
        {
            st4 = "חובה לאמת סיסמא";
            valid = false;
        }
        else if (rePass1 != rePass2)
        {
            st4 = "אימות הסיסמא אינו תקין";
            valid = false;
        }
        return valid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Session["user"] = "אורח";
        message = "Hello " + Session["user"];

        string fileName = "DataBase.mdb";
        string tableName = "UsersData";
        string selectQuery = "";
        string sqlU = "";
        if (IsPostBack)
        {
            if (IsValid())
            {
                selectQuery = "SELECT * FROM " + tableName + " WHERE userName='" + username + "' AND [userPass]='" + pass + "'";
                sqlU = "UPDATE " + tableName + " SET [userPass]='" + rePass1 + "' WHERE userName='" + username + "' AND [userPass]='" + pass + "'";
                if (MyAdoHelper.IsExist(fileName, selectQuery))// אם המשתמש קיים
                {
                    MyAdoHelper.DoQuery(fileName, sqlU);
                    userMsg = "הסיסמא עודכנה בהצלחה";
                }
                else
                {
                    userMsg = "שם המשתמש או הסיסמא המקורית אינם תקינים";
                }
            }
        }
    }
}