using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOWeb4
{
    public partial class TestResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SimpleBL nOrder = new SimpleBL();
            dgTest.DataSource = nOrder.getResult();
            dgTest.DataBind();
        }

        
    }
}