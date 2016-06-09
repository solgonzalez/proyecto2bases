using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class updateCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
        string parametro = Request.QueryString["Parameter"].ToString();

        MySqlConnection connection = new MySqlConnection(connectionString);
        {
            using (MySqlCommand cmd = new MySqlCommand())
            {
                cmd.CommandText = "Call SelectCatalogos(@tabname)";
                cmd.Connection = connection;
                cmd.Parameters.AddWithValue("tabname", "estado");
                cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                connection.Open();
                using (MySqlDataReader rdr = cmd.ExecuteReader())
                {
                    if (rdr.HasRows)
                    {
                        provinceDD.DataSource = rdr;
                        provinceDD.DataTextField = "descripcion";
                        provinceDD.DataValueField = "id";
                        provinceDD.DataBind();
                    }
                    rdr.Close();
                }
                cmd.Parameters.Clear();
                cmd.CommandText = "Call SelectCliente(@pId)";
                cmd.Connection = connection;
                cmd.Parameters.AddWithValue("pId", parametro);
                cmd.Parameters["pId"].Direction = ParameterDirection.Input;

                using (MySqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        newName.Text = rdr["nombre"].ToString();
                        newLastName.Text= rdr["apellidos"].ToString();
                        newIdNumber.Text = rdr["cedula"].ToString();
                    }
                    rdr.Close();
                }
            }
            connection.Close();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("customers.aspx");
    }
    protected void registrarCliente(object sender, EventArgs e)
    {
        string server = "localhost";
        string database = "baseProyecto2";
        string uid = "root";
        string password = "fanatico1";
        string connectionString;
        connectionString = "SERVER=" + server + ";" + "DATABASE=" +
        database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

        MySqlConnection connection = new MySqlConnection(connectionString);
        {
            using (MySqlCommand cmd = new MySqlCommand("UpdateCliente", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                string parametro = Request.QueryString["Parameter"].ToString();
                cmd.Parameters.AddWithValue("pId", parametro);
                cmd.Parameters["pId"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pRutaFoto", newPicture.PostedFile.FileName);
                cmd.Parameters["pRutaFoto"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pDireccion", newAddress.Text);
                cmd.Parameters["pDireccion"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pIdEstado", provinceDD.SelectedValue);
                cmd.Parameters["pIdEstado"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pNombre", newName.Text);
                cmd.Parameters["pNombre"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pApellidos", newLastName.Text);
                cmd.Parameters["pApellidos"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pCedula", newIdNumber.Text);
                cmd.Parameters["pCedula"].Direction = ParameterDirection.Input;
                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}