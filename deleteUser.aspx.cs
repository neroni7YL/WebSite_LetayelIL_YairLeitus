using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class deleteUser : System.Web.UI.Page
{
    public string userMsg = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DataBase.mdb";//שם מסד הנתונים
        string tableName = "UsersData";//שם הטבלה
        if (IsPostBack)
        {
            string username = Request.Form["username"];
            string selectQuery = "SELECT * FROM " + tableName + " WHERE userName='" + username + "'";
            string sqlD = "DELETE FROM " + tableName + " WHERE userName='" + username + "'";
            if (MyAdoHelper.IsExist(fileName, selectQuery))// אם המשתמש קיים
            {
                MyAdoHelper.DoQuery(fileName, sqlD);
                userMsg = "פרטי המשתמש נמחקו";
            }
            else
            {
                userMsg = "שם המשתמש אינו תקין";
            }
        }
    }
}