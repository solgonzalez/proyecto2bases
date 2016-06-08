using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class people : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void clear() {
        lblName.Visible = false;
        lblLastName.Visible = false;
        lblIdNum.Visible = false;
        lblState.Visible = false;
        lblCountry.Visible = false;
        searchName.Visible = false;
        searchLastName.Visible = false;
        searchIdNum.Visible = false;
        searchState.Visible = false;
        searchCountry.Visible = false;
    }

    protected void btnChooseSearchBy_Click(object sender, EventArgs e)
    {
        clear();
        string search = searchby.SelectedValue;
        if (search == "Name")
        {
            lblName.Visible = true;
            searchName.Visible = true;
        }
        else if (search == "Last Name")
        {
            lblLastName.Visible = true;
            searchLastName.Visible = true;
        }
        else if (search == "ID Number")
        {
            lblIdNum.Visible = true;
            searchIdNum.Visible = true;
        }
        else if (search == "State/Province")
        {
            lblState.Visible = true;
            searchState.Visible = true;
        }
        else {
            lblCountry.Visible = true;
            searchCountry.Visible = true;
        }
        btnSearch.Visible = true;
    }
}