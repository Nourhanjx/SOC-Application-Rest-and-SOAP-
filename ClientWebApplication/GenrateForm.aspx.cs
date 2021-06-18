using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json;
using ClientWebApplication.ServiceReference1;

namespace ClientWebApplication
{
    public partial class GenrateForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Generator_Click(object sender, EventArgs e)
        {
            string Firstname = firstname.Text;
            string Lastname = lastname.Text;
            int Age = int.Parse(age.Text);

            string url = @"http://localhost:62237/RESTService.svc/generateAPojI?first=" + Firstname+"&last="+Lastname+"&age="+Age;
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            WebResponse response = request.GetResponse();

            Stream responseStream = response.GetResponseStream();

            StreamReader reader = new StreamReader(responseStream);
            String json = reader.ReadToEnd();
            LoginID.Text = json;
            Password.Text = json;

            results r = JsonConvert.DeserializeObject<results>(json);
            LoginID.Text = r.loginID.ToString();
            Password.Text = r.password.ToString();



        }

        ServiceReference2.APIServiceSOAPClient soapProxy = new ServiceReference2.APIServiceSOAPClient();

        protected void Generator_SOAP(object sender, EventArgs e)
        {
            string Firstname = firstname.Text;
            string Lastname = lastname.Text;
            int Age = int.Parse(age.Text);

            ServiceReference2.results res = soapProxy.generateAPI(Firstname,Lastname,Age);
            LoginID.Text = res.loginID.ToString();
            Password.Text = res.password.ToString();
        }
    }
}