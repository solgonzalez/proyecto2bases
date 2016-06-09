using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class people : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["PostID"] = "1001";
            ViewState["PostID"] = Session["PostID"].ToString();
            string server = "localhost";
            string database = "baseProyecto2";
            string uid = "root";
            string password = "fanatico1";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" +
            database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

            MySqlConnection connection = new MySqlConnection(connectionString);
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = "Call SelectNIdCliente()";
                    cmd.Connection = connection;
                    connection.Open();
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            namesToEdit.DataSource = rdr;
                            namesToEdit.DataTextField = "nombre";
                            namesToEdit.DataValueField = "id";
                            namesToEdit.DataBind();
                        }
                        rdr.Close();
                    }

                }
                connection.Close();
            }
        }
        else
        {
            if (ViewState["PostID"].ToString() == Session["PostID"].ToString())
            {
                Session["PostID"] = (Convert.ToInt16(Session["PostID"]) + 1).ToString();

                ViewState["PostID"] = Session["PostID"].ToString();
                results.Text = "";

            }
            else
            {
                ViewState["PostID"] = Session["PostID"].ToString();
                Response.Redirect("customers.aspx", true);

            }
        }
    }

    protected void clear()
    {
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
        else
        {
            lblCountry.Visible = true;
            searchCountry.Visible = true;
        }
        btnSearch.Visible = true;
    }

    // Will redirect user to same page used to create new customer,
    // but will fill in all spaces with present information.
    // All unchanged info will not be changed in database.
    protected void btnChooseCustToEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("update-customer.aspx?Parameter=" + namesToEdit.SelectedValue);
    }
}