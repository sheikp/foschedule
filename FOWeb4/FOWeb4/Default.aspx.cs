using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FOWeb4;

namespace FOWeb4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblmessage.Text = "";

        }

        protected void lnkOrder_Click(object sender, EventArgs e)
        {
            if (txtPhone.Value == "" || txtEmail.Value == "" || txtZip.Value == "")
                lblmessage.Text = "Please enter all the information to procees!";
            else
            { 
            SimpleBL nOrder = new SimpleBL();
            int res = nOrder.newOrder(txtPhone.Value, txtEmail.Value, txtZip.Value);
            string[] cuS = nOrder.ScheduleOrder(res, txtZip.Value).Split("##".ToCharArray());

            if (cuS[6] == "1")
                cuS[6] = "9AM";
            else
                cuS[6] = "1PM";
                if(cuS[0] == "")
                    lblmessage.Text = "Sorry we are not covering your location. :(";
                else
            lblmessage.Text = "Thank you for Ordering FiOS. Technician " + cuS[0] + "(Mobile: " + cuS[2] + ") will come to your place on " + cuS[4] + " @ " + cuS[6] + ".";
            }
            ModalPopupExtender1.Show();
            
        }
    }
}