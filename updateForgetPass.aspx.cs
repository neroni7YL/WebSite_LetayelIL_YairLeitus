using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class updateForgetPass : System.Web.UI.Page
{
    public string username, rePass1, rePass2, st1, st2, st3;
    public string userMsg = "";
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
        username = Request.Form["username"];
        rePass1 = Request.Form["password1"];
        rePass2 = Request.Form["password2"];
        //תקינות שם משתמש
        if (username == "")
        {
            st1 = "חובה להזין שם משתמש";
            valid = false;
        }
        else if (IsRegular(username))
        {
            if (username.Length < 5 || username.Length > 16)
            {
                st1 = "שם המשתמש יכיל בין 5 ל-16 תווים";
                valid = false;
            }
        }
        else
        {
            st1 = "שם משתמש יכיל אותיות לועזיות, מספרים, או קו תחתון ויתחיל באות לועזית";
            valid = false;
        }
        //תקינות סיסמא
        if (rePass1 == "")
        {
            st2 = "חובה להזין סיסמא";
            valid = false;
        }
        else if (rePass1.Length < 8 || rePass1.Length > 20)
        {
            st2 = "סיסמא תכיל בין 8 ל-20 תווים";
            valid = false;
        }
        //תקינות אימות סיסמא
        if (rePass2 == "")
        {
            st3 = "חובה לאמת סיסמא";
            valid = false;
        }
        else if (rePass1 != rePass2)
        {
            st3 = "אימות הסיסמא אינו תקין";
            valid = false;
        }
        return valid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DataBase.mdb";
        string tableName = "UsersData";
        string selectQuery = "";
        string sqlU = "";
        if (IsPostBack)
        {
            if (IsValid())
            {
                selectQuery = "SELECT * FROM " + tableName + " WHERE userName='" + username + "'";
                sqlU = "UPDATE " + tableName + " SET [userPass]='" + rePass1 + "' WHERE userName='" + username + "'";
                if (MyAdoHelper.IsExist(fileName, selectQuery))// אם המשתמש קיים
                {
                    MyAdoHelper.DoQuery(fileName, sqlU);
                    Session["user"] = username;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    userMsg = "שם המשתמש או הסיסמא המקורית אינם תקינים";
                }
            }
        }
    }
}