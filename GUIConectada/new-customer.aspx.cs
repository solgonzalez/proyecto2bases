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
                cmd.CommandText = "Call SelectCatalogos(@tabname)";//carga los estilos
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
            using (MySqlCommand cmd = new MySqlCommand("InsertCliente", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
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