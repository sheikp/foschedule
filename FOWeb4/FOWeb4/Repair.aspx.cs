using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOWeb4
{
    public partial class Repair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (popupctrl.Value == "1")
                ModalPopupExtender1.Show();
            else if (popupctrl.Value == "2")
                ModalPopupExtender2.Show();
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            if (txtcustid.Value == "" || txtdescription.Value == "" )
                lblmessage.Text = "Please enter all the information to procees!";
            else
            {
                SimpleBL nOrder = new SimpleBL();
                int res = nOrder.newRepair(Convert.ToInt32(txtcustid.Value), txtdescription.Value);
                Session.Add("orderid", res.ToString());
                string strzip = nOrder.getzipcustomer(res);
                string[] cuS = nOrder.ScheduleOrder(res, strzip, "repair").Split("##".ToCharArray());

                if (cuS[6] == "1")
                    cuS[6] = "9AM";
                else if (cuS[6] == "2")
                    cuS[6] = "12PM";
                else
                    cuS[6] = "3PM";

                lblmessage.Text = "Your Ticket Number#: " + cuS[8] + ". <br>Technician: " + cuS[0] + ".<br>Mobile: " + cuS[2] + ".<br>Scheduled Dated: " + cuS[4] + ". <br>Scheduled Time: " + cuS[6] + ".";
            }
            ModalPopupExtender1.Show();
            popupctrl.Value = "1";
           
        }
        protected void btnLater_Click(object sender, EventArgs e)
        {
            ModalPopupExtender1.Hide();
            ModalPopupExtender2.Show();
            popupctrl.Value = "2";
        }

        protected void btnOkay_Click(object sender, EventArgs e)
        {
            SimpleBL nOrder = new SimpleBL();
            nOrder.confirmOrder(Convert.ToInt32(Session["orderid"].ToString()), "repair");
            ModalPopupExtender1.Hide();
        }

        protected void btnOkay2_Click(object sender, EventArgs e)
        {
            SimpleBL nOrder = new SimpleBL();
            nOrder.confirmOrderLater(Convert.ToInt32(Session["orderid"].ToString()), "repair", Calendar1.SelectedDate);
            ModalPopupExtender2.Hide();
        }
    }
}