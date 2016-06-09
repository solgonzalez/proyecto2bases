using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class employees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // Change 234 to actual employee count based on database info.
    protected void btnEmpCount_Click(object sender, EventArgs e)
    {
        lblEmpCount.Text = "234";
        lblEmpCount.Visible = true;
        lblEmpCount2.Visible = true;
    }
}