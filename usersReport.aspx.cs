using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class usersReport : System.Web.UI.Page
{
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
    public string st1, yearB;
    public bool IsValid()
    {
        bool valid = true;
        yearB = Request.Form["yearB"];
        //תקינות שנת לידה
        if (yearB == null || yearB == "")//null -->כניסה ראשונה לדף
        {                                
            valid = false;
        }
        else if (IsNumeric(yearB))
        {
            if (int.Parse(yearB) < 1930 || int.Parse(yearB) > 2012)
            {
                st1 = "שנת הלידה אינה עדכנית";
                valid = false;
            }
        }
        else
        {
            st1 = "שנת הלידה תכלול מספרים בלבד";
            valid = false;
        }
        return valid;
    }
    public string usersList;
    public string usersCount;
    protected void Page_Load(object sender, EventArgs e)
    {     
        string fileName = "DataBase.mdb";
        string tableName = "UsersData";
        string selectQuery = "";
        if (IsValid())
        {
            selectQuery = "SELECT * FROM " + tableName + " WHERE birthYear=" + yearB + "";//num --> =" + משתנה + "";
        }                                                                                 //string --> ='" + משתנה + "'";
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
            usersList += "<th> סיסמא </th>";
            usersList += "<th> שם פרטי </th>";
            usersList += "<th> שם משפחה </th>";
            usersList += "<th> מין </th>";
            usersList += "<th> שנת לידה </th>";
            usersList += "<th> חודש לידה </th>";
            usersList += "<th> יום לידה </th>";
            usersList += "<th> טיול אחרון </th>";
            usersList += "<th> הטיול הבא </th>";
            usersList += "</tr>";
            for (int i = 0; i < length; i++)
            {
                usersList += "<tr style='text-align:center'>";
                usersList += "<td>" + table.Rows[i]["userName"] + "</td>";
                usersList += "<td>" + table.Rows[i]["userPass"] + "</td>";
                usersList += "<td>" + table.Rows[i]["fName"] + "</td>";
                usersList += "<td>" + table.Rows[i]["lName"] + "</td>";
                usersList += "<td>" + table.Rows[i]["gender"] + "</td>";
                usersList += "<td>" + table.Rows[i]["birthYear"] + "</td>";
                usersList += "<td>" + table.Rows[i]["birthMonth"] + "</td>";
                usersList += "<td>" + table.Rows[i]["birthDay"] + "</td>";
                usersList += "<td>" + table.Rows[i]["lastTrip"] + "</td>";
                usersList += "<td>" + table.Rows[i]["nextTrip"] + "</td>";
                usersList += "</tr>";
            }
            usersList += "</table>";           
        }
        usersCount = "<span style='font-size:large'> כמות המשתמשים - <span>" + length;       
    }
}