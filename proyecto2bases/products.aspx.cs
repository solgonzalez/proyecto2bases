using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void clear() {
        lblName.Visible = false;
        lblFerTime.Visible = false;
        lblFerType.Visible = false;
        lblTemp.Visible = false;
        lblPrice.Visible = false;
        lblColor.Visible = false;
        lblBody.Visible = false;
        lblStyle.Visible = false;
        lblSubCat.Visible = false;
        lblCat.Visible = false;
        searchName.Visible = false;
        searchFerTime.Visible = false;
        searchFerType.Visible = false;
        searchTemp.Visible = false;
        searchPrice.Visible = false;
        searchColor.Visible = false;
        searchBody.Visible = false;
        searchStyle.Visible = false;
        searchSubCat.Visible = false;
        searchCat.Visible = false;
    }

    protected void btnChooseBeerSearchBy_Click(object sender, EventArgs e)
    {
        string search = searchby.SelectedValue;
        if (search == "Name")
        {
            lblName.Visible = true;
            searchName.Visible = true;
        }
        else if (search == "Fermentation Time")
        {
            lblFerTime.Visible = true;
            searchFerTime.Visible = true;
        }
        else if (search == "Fermentation Type")
        {
            lblFerType.Visible = true;
            searchFerTime.Visible = true;
        }
        else if (search == "Temperature")
        {
            lblTemp.Visible = true;
            searchTemp.Visible = true;
        }
        else if (search == "Price")
        {
            lblPrice.Visible = true;
            searchPrice.Visible = true;
        }
        else if (search == "Color")
        {
            lblColor.Visible = true;
            searchColor.Visible = true;
        }
        else if (search == "Body")
        {
            lblBody.Visible = true;
            searchBody.Visible = true;
        }
        else if (search == "Style")
        {
            lblStyle.Visible = true;
            searchStyle.Visible = true;
        }
        else if (search == "Subcategory")
        {
            lblSubCat.Visible = true;
            searchSubCat.Visible = true;
        }
        else if (search == "Category") {
            lblCat.Visible = true;
            searchCat.Visible = true;
        }
        btnSearchBeer.Visible = true;
    }
}