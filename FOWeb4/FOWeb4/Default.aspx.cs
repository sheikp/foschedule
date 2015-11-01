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
            if (popupctrl.Value == "1")
                ModalPopupExtender1.Show();
            else if (popupctrl.Value == "2")
                ModalPopupExtender2.Show();

        }

        protected void lnkOrder_Click(object sender, EventArgs e)
        {
            if (txtPhone.Value == "" || txtEmail.Value == "" || txtZip.Value == "")
                lblmessage.Text = "Please enter all the information to procees!";
            else
            { 
            SimpleBL nOrder = new SimpleBL();
            int res = nOrder.newOrder(txtPhone.Value, txtEmail.Value, txtZip.Value);
                Session.Add("orderid", res.ToString());
            string[] cuS = nOrder.ScheduleOrder(res, txtZip.Value,"install").Split("##".ToCharArray());

            if (cuS[6] == "1")
                cuS[6] = "9AM";
            else
                cuS[6] = "1PM";
                if (cuS[0] == "")
                {
                    lblmessage.Text = "Sorry we are not covering your location. :(";
                    btnLater.Visible = false;
                    btnOkay.Visible = false;
                }
                else
                {
                    lblmessage.Text = "Thank you for Ordering FiOS. <br>Your Order#: " + cuS[8] + ". <br>Technician: " + cuS[0] + ".<br>Mobile: " + cuS[2] + ".<br>Scheduled Dated: " + cuS[4] + ". <br>Scheduled Time: " + cuS[6] + ".";
                    btnLater.Visible = true;
                    btnOkay.Visible = true;
                }
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
            nOrder.confirmOrder(Convert.ToInt32(Session["orderid"].ToString()),"install");
            ModalPopupExtender1.Hide();
        }

        protected void btnOkay2_Click(object sender, EventArgs e)
        {
            SimpleBL nOrder = new SimpleBL();
            nOrder.confirmOrderLater(Convert.ToInt32(Session["orderid"].ToString()), "install", Calendar1.SelectedDate);
            ModalPopupExtender2.Hide();
        }
    }
}