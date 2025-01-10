using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class login : System.Web.UI.Page
{
    public string username, pass, st1, st2;
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
        pass = Request.Form["password1"];
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
        if (pass == "")
        {
            st2 = "חובה להזין סיסמא";
            valid = false;
        }
        else if (pass.Length < 8 || pass.Length > 20)
        {
            st2 = "סיסמא תכיל בין 8 ל-20 תווים";
            valid = false;
        }
        return valid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DataBase.mdb";
        string tableName = "UsersData";
        string selectQuery = "";      
        if (IsPostBack)
        {
            if (IsValid())
            {
                selectQuery = "SELECT * FROM " + tableName + " WHERE userName='" + username + "' AND [userPass]='" + pass + "'";
                if (MyAdoHelper.IsExist(fileName, selectQuery))// אם המשתמש קיים
                {
                    if (username == "yairleitus" && pass == "12345678")//מנהל
                    {
                        Session["user"] = "מנהל";
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        Session["user"] = username;
                        Response.Redirect("HomePage.aspx");
                    }                                                                                                       
                }
                else
                {
                    userMsg = "שם המשתמש או הסיסמא אינם תקינים";
                }
            }
        }
       
    }
}