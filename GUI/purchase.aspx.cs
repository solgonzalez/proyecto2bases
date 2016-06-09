using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCancel_Click(object sender, EventArgs e) {
        Response.Redirect("home.aspx");
    }

    protected ArrayList getShoppingCart() {
        ArrayList cartItems = new ArrayList();
        foreach (ListItem item in listCart.Items)
        {
            cartItems.Add(item.Text);
        }
        return cartItems;
    }

    protected string getCustomer() {
        string customer = custForPurchase.SelectedValue.ToString();
        return customer;
    }

    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        if (getShoppingCart().Count != 0)
        {
            Response.Write("<script>alert('Purchase successful.');</script>");
            Response.Redirect("home.aspx");
        }
        else {
            Response.Write("<script>alert('Please select at least one item.');</script>");
        }
    }
}