using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace VisitorCount
{
    /// <summary>
    /// Summary description for Calculator
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Calculator : System.Web.Services.WebService
    {

        [WebMethod]
        public string calculate(string first, string second, char sign)
        {
            string result;
            switch (sign)
            {
                case '+':
                    {
                        result = (Convert.ToInt32(first) + Convert.ToInt32(second)).ToString();
                        break;
                    }
                case '-':
                    {
                        result = (Convert.ToInt32(first) - Convert.ToInt32(second)).ToString();
                        break;
                    }
                case '*':
                    {
                        result = (Convert.ToInt32(first) * Convert.ToInt32(second)).ToString();
                        break;
                    }
                case '/':
                    {
                        result = (Convert.ToInt32(first) / Convert.ToInt32(second)).ToString();
                        break;
                    }
                case '%':
                    {
                        result = (Convert.ToInt32(first) % Convert.ToInt32(second)).ToString();
                        break;
                    }
                default:
                    result = "Invalid";
                    break;
            }
            return result;
        }
    }
}
