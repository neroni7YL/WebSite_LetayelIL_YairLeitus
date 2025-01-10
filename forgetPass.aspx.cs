using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class forgetPass : System.Web.UI.Page
{
    public string username, tripN, st1, st2;
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
        tripN = Request.Form["tripN"];
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
        //תקינות היעד הבא
        if (tripN == "")
        {
            st2 = "חובה להזין את יעד הטיול הבא";
            valid = false;
        }
        else if (tripN.Length < 2 || tripN.Length > 20)
        {
            st2 = "יעד הטיול אינו תקין";
            valid = false;
        }
        return valid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "";
        string tableName = "";
        string selectQuery = "";   
        if (IsPostBack)
        {
            if (IsValid())
            {
                fileName = "DataBase.mdb";
                tableName = "UsersData";
                selectQuery = "SELECT * FROM " + tableName + " WHERE userName='" + username + "' AND [nextTrip]='" + tripN + "'";
                if (MyAdoHelper.IsExist(fileName, selectQuery))// אם המשתמש קיים
                {
                    Response.Redirect("updateForgetPass.aspx");                  
                }
                else
                {
                    userMsg = "שם המשתמש או יעד הטיול הבא אינם תקינים";
                }
            }
        }

    }
}