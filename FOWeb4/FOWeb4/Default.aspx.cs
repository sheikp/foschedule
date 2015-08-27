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

        }

        protected void lnkOrder_Click(object sender, EventArgs e)
        {
            SimpleBL nOrder = new SimpleBL();
            int res = nOrder.newOrder(txtPhone.Value, txtEmail.Value, txtZip.Value);

        }
    }
}