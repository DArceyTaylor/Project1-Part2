using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
    Author's name: D'Arcey Taylor, Chad Ostler
    Student Number: 200302660, 200301048
    Date Modified: 2016/06/08
    Version: 0.0.2
    File Description: This is the C# code behind file for the Contact.aspx page, and submits the form
*/

namespace COMP2007_Project1_Part2
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            //this is a placeholder for working code that sends email
            Response.Redirect("Default.aspx");
        }
    }
}