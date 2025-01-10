using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class shop : System.Web.UI.Page
{
    public string message = "";
    public string customersReport = "";
    public string st1, st2, st3, st4, st5, st6, st7;
    public string backpackS = "", shoesS = "", hatS = "", bagS = "", tentS = "", coatS = "", watchS = "";
    public string userMsg = "";

    static bool IsNumeric(string str)
    {
        string strcheck = "0123456789";
        for (int i = 0; i < str.Length; i++)
        {
            if (strcheck.IndexOf(str[i]) < 0)
            // if (strcheck.IndexOf('str[0] = 2') < 0) >> false -> return true.
            // if ("0123456789".IndexOf('str[0] = a') < 0) >> true -> return false.                
            {
                return false;
            }
        }
        return true;
    }
    public bool IsValid()
    {
        bool valid = true;
        backpackS = Request.Form["countBackpack"];
        shoesS = Request.Form["countShoes"];
        hatS = Request.Form["countHat"];
        bagS = Request.Form["countBag"];
        tentS = Request.Form["countTent"];
        coatS = Request.Form["countCoat"];
        watchS = Request.Form["countWatch"];
        if (IsNumeric(backpackS))
        {
            if (int.Parse(backpackS) > 9)
            {
                st1 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st1 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        if (IsNumeric(shoesS))
        {
            if (int.Parse(shoesS) > 9)
            {
                st2 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st2 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        if (IsNumeric(hatS))
        {
            if (int.Parse(hatS) > 9)
            {
                st3 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st3 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        if (IsNumeric(bagS))
        {
            if (int.Parse(bagS) > 9)
            {
                st4 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st4 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        if (IsNumeric(tentS))
        {
            if (int.Parse(tentS) > 9)
            {
                st5 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st5 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        if (IsNumeric(coatS))
        {
            if (int.Parse(coatS) > 9)
            {
                st6 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st6 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        if (IsNumeric(watchS))
        {
            if (int.Parse(watchS) > 9)
            {
                st7 = "כמות המוצר לא תעלה מעל 9 פריטים";
                valid = false;
            }
        }
        else
        {
            st7 = "הערך שהוזן אינו מספרי";
            valid = false;
        }
        return valid;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        message = "Hello " + Session["user"];

        if ((string)Session["user"] == "מנהל")
        {
            customersReport = "<a href='customersReport.aspx' style='font-size:larger'>דוח לקוחות</a>";
        }
        string receive = Request.Form["receiving"];
        string sqlP = "";
        string fileName = "DataBase.mdb";
        string tableName = "PurchaseData";
        string username = (string)Session["user"];
        if (IsPostBack)
        {
            if (IsValid())
            {
                int backpack = int.Parse(backpackS);
                int shoes = int.Parse(shoesS);
                int hat = int.Parse(hatS);
                int bag = int.Parse(bagS);
                int tent = int.Parse(tentS);
                int coat = int.Parse(coatS);
                int watch = int.Parse(watchS);
                int price = backpack * 250 + shoes * 300 + hat * 50 + bag * 80 + tent * 100 + coat * 60 + watch * 120;
                
                if (price > 0)
                {
                    if (receive == "shipping")
                    {
                        price = price + 40;
                    }                                     
                    sqlP = "INSERT INTO " + tableName + " (userName,price,receive,backpack,shoes,hat,bag,tent,coat,watch) VALUES('" + username + "', '" + price + "', '" + receive + "', '" + backpackS + "', '" + shoesS + "', '" + hatS + "', '" + bagS + "', '" + tentS + "', '" + coatS + "', '" + watchS + "')";
                    MyAdoHelper.DoQuery(fileName, sqlP);
                    userMsg = "תודה שקניתם אצלינו ההזמנה התקבלה על סך " + price + " ש'ח";

                    if (receive == "shipping")
                    {
                        userMsg += "<br>המוצרים ישלחו אליכם בקרוב";
                    }
                    else
                    {
                        userMsg += "<br>הינכם מוזמנים להגיע לאסוף את המוצרים";
                    }
                }
            }
        }

    }
}