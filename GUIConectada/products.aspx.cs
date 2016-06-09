using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class products : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        results.Text = "";
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
            results.Visible = false;
            results.Text = "";

            MySqlConnection connection = new MySqlConnection(connectionString);
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = "Call SelectCatalogos(@tabname)";//carga los estilos
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("tabname", "cuerpo");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    connection.Open();
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            searchBody.DataSource = rdr;
                            searchBody.DataTextField = "descripcion";
                            searchBody.DataValueField = "id";
                            searchBody.DataBind();
                        }
                        rdr.Close();
                    }
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("tabname", "estilo");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            searchStyle.DataSource = rdr;
                            searchStyle.DataTextField = "descripcion";
                            searchStyle.DataValueField = "id";
                            searchStyle.DataBind();
                        }
                        rdr.Close();
                    }
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("tabname", "color");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            searchColor.DataSource = rdr;
                            searchColor.DataTextField = "descripcion";
                            searchColor.DataValueField = "id";
                            searchColor.DataBind();
                        }
                        rdr.Close();
                    }
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("tabname", "subcategoria");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            searchSubCat.DataSource = rdr;
                            searchSubCat.DataTextField = "descripcion";
                            searchSubCat.DataValueField = "id";
                            searchSubCat.DataBind();
                        }
                        rdr.Close();
                    }
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("tabname", "categoriaPrincipal");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            searchCat.DataSource = rdr;
                            searchCat.DataTextField = "descripcion";
                            searchCat.DataValueField = "id";
                            searchCat.DataBind();
                        }
                        rdr.Close();
                    }
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("tabname", "tipoFermentacion");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            searchFerType.DataSource = rdr;
                            searchFerType.DataTextField = "descripcion";
                            searchFerType.DataValueField = "id";
                            searchFerType.DataBind();
                        }
                        rdr.Close();
                    }
                    cmd.Parameters.Clear();
                    cmd.CommandText = "Call SelectNombreIdCerveza()";
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            beersToEdit.DataSource = rdr;
                            beersToEdit.DataTextField = "nombre";
                            beersToEdit.DataValueField = "id";
                            beersToEdit.DataBind();
                        }
                        rdr.Close();
                    }
                    connection.Close();
                }

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
                Response.Redirect("products.aspx", true);

            }
        }
    }

    protected void clear()
    {
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
        lblHours.Visible = false;
        lblDegrees.Visible = false;
        lblDollars.Visible = false;
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

    protected void buscarCerveza(object sender, EventArgs e)
    {
        results.Text = "";
        string server = "localhost";
        string database = "baseProyecto2";
        string uid = "root";
        string password = "fanatico1";
        string connectionString;
        string valor="";
        string columna = "";
        connectionString = "SERVER=" + server + ";" + "DATABASE=" +
        database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

        MySqlConnection connection = new MySqlConnection(connectionString);
        {
            using (MySqlCommand cmd = new MySqlCommand())
            {
                cmd.CommandText = "Call BusquedaCerveza(@columna,@valor)";
                cmd.Connection = connection;
                if ((searchby.SelectedValue) == "Name")
                {
                    columna = "nombre";
                }
                
                
                if((searchby.SelectedValue)=="Name")
                {
                    valor = searchName.Text;
                }
                else if ((searchby.SelectedValue) == "Fermentation Time")
                {
                    cmd.CommandText = "Call BusquedaCervezaInt(@columna,@valor)";
                    columna = "tiempoFermentacion";
                }
               

                if ((searchby.SelectedValue) == "Fermentation Time")
                {
                    valor = "3";
                }

                else if ((searchby.SelectedValue) == "Fermentation Type")
                {
                    cmd.CommandText = "Call BusquedaCervezaAtrExterno(@columna,@valor)";
                    columna = "tipoFermentacion";
                }
               

                if ((searchby.SelectedValue) == "Fermentation Type")
                {
                    valor = searchFerType.SelectedValue;
                }
                else if ((searchby.SelectedValue) == "Temperature")
                {
                    cmd.CommandText = "Call BusquedaCervezaInt(@columna,@valor)";
                    columna = "temperatura";
                }


                if ((searchby.SelectedValue) == "Temperature")
                {
                    valor = searchTemp.Text;
                }
                else if ((searchby.SelectedValue) == "Price")
                {
                    cmd.CommandText = "Call BusquedaCervezaInt(@columna,@valor)";
                    columna = "precio";
                }


                if ((searchby.SelectedValue) == "Price")
                {
                    valor = searchPrice.Text;
                }
                else if ((searchby.SelectedValue) == "Color")
                {
                    cmd.CommandText = "Call BusquedaCervezaAtrExterno(@columna,@valor)";
                    columna = "color";
                }


                if ((searchby.SelectedValue) == "Color")
                {
                    valor = searchColor.SelectedValue;
                }
                else if ((searchby.SelectedValue) == "Body")
                {
                    cmd.CommandText = "Call BusquedaCervezaAtrExterno(@columna,@valor)";
                    columna = "cuerpo";
                }


                if ((searchby.SelectedValue) == "Color")
                {
                    valor = searchBody.SelectedValue;
                }
                else if ((searchby.SelectedValue) == "Style")
                {
                    cmd.CommandText = "Call BusquedaCervezaAtrExterno(@columna,@valor)";
                    columna = "estilo";
                }


                if ((searchby.SelectedValue) == "Style")
                {
                    valor = searchStyle.SelectedValue;
                }
                else if ((searchby.SelectedValue) == "Subcategory")
                {
                    cmd.CommandText = "Call BusquedaCervezaAtrExterno(@columna,@valor)";
                    columna = "subcategoria";
                }


                if ((searchby.SelectedValue) == "Subcategory")
                {
                    valor = searchSubCat.SelectedValue;
                }
                else if ((searchby.SelectedValue) == "Category")
                {
                    cmd.CommandText = "Call BusquedaCervezaAtrExterno(@columna,@valor)";
                    columna = "categoria";
                }


                if ((searchby.SelectedValue) == "Category")
                {
                    valor = searchCat.SelectedValue;
                }
                cmd.Parameters.AddWithValue("columna", columna);
                cmd.Parameters["columna"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("valor", valor);
                cmd.Parameters["valor"].Direction = ParameterDirection.Input;
                connection.Open();
                results.Text = "";
                using (MySqlDataReader rdr = cmd.ExecuteReader())
                {

                    while (rdr.Read())
                    {
                        
                        results.Text += rdr["nombre"].ToString() + "\r\n";
                        
                    }
                    results.Visible = true;
                    rdr.Close();
                }
            }
        }
    }
    protected void btnChooseBeerSearchBy_Click(object sender, EventArgs e)
    {
        clear();
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
            lblHours.Visible = true;
        }
        else if (search == "Fermentation Type")
        {
            lblFerType.Visible = true;
            searchFerType.Visible = true;
        }
        else if (search == "Temperature")
        {
            lblTemp.Visible = true;
            searchTemp.Visible = true;
            lblDegrees.Visible = true;
        }
        else if (search == "Price")
        {
            lblPrice.Visible = true;
            searchPrice.Visible = true;
            lblDollars.Visible = true;
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
        else if (search == "Category")
        {
            lblCat.Visible = true;
            searchCat.Visible = true;
        }
        btnSearchBeer.Visible = true;
    }

    // Will redirect user to new-beer page but fill in all details with present info.
    // If data is unchanged, it will not be updated in the database.
    protected void btnChooseBeerToEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("update-beer.aspx?Parameter=" + beersToEdit.SelectedValue);
    }
}