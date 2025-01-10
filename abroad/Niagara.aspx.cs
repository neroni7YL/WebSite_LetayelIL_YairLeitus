using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Niagara : System.Web.UI.Page
{
    public string message = "";
    public string shop = "", logout = "", updatePass = "";
    public string signup = "", login = "", content = "", contact = "";
    public string deleteUser = "", usersReport = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Session["user"] = "אורח";
        message = "Hello " + Session["user"];

        if ((string)Session["user"] == "אורח")
        {
            signup = "<a href='../signup.aspx'>הרשמה</a>";
            login = "<a href='../login.aspx'>התחברות</a>";
            content = "<span><b>לתכנים נוספים</b><br /><b>הנכם מתבקשים</b><br /><b>להתחבר לאתר</b></span>";
            contact = "<a href='../contact.aspx'><b>יצירת קשר</b><br />לחץ כאן</a>";
        }
        else if ((string)Session["user"] == "מנהל")
        {
            shop = "<a href='../customersReport.aspx'>דוח לקוחות</a>";
            logout = "<a href='../logout.aspx'>התנתקות</a>";
            updatePass = "<a href='../updatePass.aspx'><b>עדכון סיסמא</b><br />לחץ כאן</a>";
            deleteUser = "<a href='../deleteUser.aspx'><b>מחיקת משתמש</b><br />לחץ כאן</a>";
            usersReport = "<a href='../usersReport.aspx'><b>דוח משתמשים</b><br />לחץ כאן</a>";
        }
        else
        {
            shop = "<a href='../shop.aspx'>חנות</a>";
            logout = "<a href='../logout.aspx'>התנתקות</a>";
            updatePass = "<a href='../updatePass.aspx'><b>עדכון סיסמא</b><br />לחץ כאן</a>";
            contact = "<a href='../contact.aspx'><b>יצירת קשר</b><br />לחץ כאן</a>";
        }
    }
}