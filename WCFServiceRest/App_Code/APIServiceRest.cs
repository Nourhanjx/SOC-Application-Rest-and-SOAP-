using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class APIServiceRest: IAPIServiceRest
{
    public results generateAPI(string first, string last, int age)
    {
        results res = new results();
        int loginID;
        string pass;

        string substringlast = last.Substring(0, 2);
        string substringfirst = first.Substring(0, 2);
        int ageMod = age % 5;
        string ageString = ageMod.ToString();


        Random rand = new Random();
        int randNum = rand.Next(100, 200);

        //generated password
        pass = substringlast + substringfirst + ageString;
        loginID = age * randNum; 


        res.password = pass;
        res.loginID = loginID;
        return res;
    }

}
