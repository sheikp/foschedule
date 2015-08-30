using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOWeb4
{
    public partial class MyOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            SimpleBL sbl = new SimpleBL();
            string[] cuS = sbl.GetSchedule(Phone.Value, Order.Value).Split("##".ToCharArray()); 
             if (cuS[6] == "1")
                cuS[6] = "9AM";
            else
                cuS[6] = "1PM";
                if(cuS[0] == "")
                    lblmessage.Text = "Sorry we don't have detail. Please check your input. :(";
                else if (cuS[0] == "Completed")
                    lblmessage.Text = "Your Order has been completed.";
                else
                    lblmessage.Text = "Technician " + cuS[0] + "(Mobile: " + cuS[2] + ") will come to your place on " + cuS[4] + " @ " + cuS[6] + ".";
            
            ModalPopupExtender1.Show();
        }
    }
}