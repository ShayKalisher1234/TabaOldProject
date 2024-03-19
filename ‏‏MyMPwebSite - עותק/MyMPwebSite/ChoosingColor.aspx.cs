using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyMPwebSite
{
    public partial class ChoosingColor : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string color = Request.Form["answer"];
                string Uname = Request.Form["Name"];
                string gender = Request.Form["gender"];

                st += "<TABLE border = '1' align = 'center'>";

                st += "<tr><td colspan = '2' align = 'center'>";
                if (gender == "male")
                    st += "<h3>" + Uname + " הוא בן </h3>";
                else
                    st += "<h3>" + Uname + " היא בת </h3>";
                st += "</td></tr>";

                st += "<tr>" +
                    "<td width = '100' align = 'right'> תשובה </td>" +
                    "<td width = '50' align = 'center'>" + color + "</td>" +
                    "</tr>";

                st += "</TABLE>";

            }
        }
    }
}