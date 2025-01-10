using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class customersReport : System.Web.UI.Page
{
    public string receive = "";
    public bool IsValid()
    {
        bool valid = true;
        receive = Request.Form["receiving"];
        if (receive == null)//כניסה ראשונה לדף
        {
            valid = false;
        }
        if (receive == "purchase")
        {
            valid = false;
        }
        return valid;
    }

    public string usersList;
    public string usersCount;
    //DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DataBase.mdb";
        string tableName = "PurchaseData";
        string selectQuery = "";
        if (IsValid())
        {           
            selectQuery = "SELECT * FROM " + tableName + " WHERE receive='" + receive + "'";                    
        }
        else
        {
            selectQuery = "SELECT * FROM " + tableName;
        }     
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            usersList += "<table style='font-size:large; width:600px' border='1' dir='rtl'>";
            usersList += "<tr style='text-align:center'>";
            usersList += "<th> שם משתמש </th>";
            usersList += "<th> מחיר </th>";
            usersList += "<th> קבלת המוצרים </th>";
            usersList += "<th> תרמיל יום </th>";
            usersList += "<th> נעלי הליכה </th/>";
            usersList += "<th> כובע </th>";
            usersList += "<th> שק שינה </th>";
            usersList += "<th> אוהל </th>";
            usersList += "<th> מעיל גשם </th>";
            usersList += "<th> שעון שטח </th>";
            usersList += "</tr>";
            for (int i = 0; i < length; i++)
            {
                usersList += "<tr style='text-align:center'>";
                usersList += "<td>" + table.Rows[i]["userName"] + "</td>";
                usersList += "<td>" + table.Rows[i]["price"] + "</td>";
                usersList += "<td>" + table.Rows[i]["receive"] + "</td>";
                usersList += "<td>" + table.Rows[i]["backpack"] + "</td>";
                usersList += "<td>" + table.Rows[i]["shoes"] + "</td>";
                usersList += "<td>" + table.Rows[i]["hat"] + "</td>";
                usersList += "<td>" + table.Rows[i]["bag"] + "</td>";
                usersList += "<td>" + table.Rows[i]["tent"] + "</td>";
                usersList += "<td>" + table.Rows[i]["coat"] + "</td>";
                usersList += "<td>" + table.Rows[i]["watch"] + "</td>";
                usersList += "</tr>";
            }
            usersList += "</table>";           
        }
        usersCount = "<span style='font-size:large'> כמות המשתמשים - <span>" + length;
    }
}