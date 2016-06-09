﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class registerBeer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            Session["PostID"] = "1002";
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
                    cmd.Parameters.AddWithValue("tabname", "cuerpo");
                    cmd.Parameters["tabname"].Direction = ParameterDirection.Input;
                    connection.Open();
                    using (MySqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            newBody.DataSource = rdr;
                            newBody.DataTextField = "descripcion";
                            newBody.DataValueField = "id";
                            newBody.DataBind();
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
                            newStyle.DataSource = rdr;
                            newStyle.DataTextField = "descripcion";
                            newStyle.DataValueField = "id";
                            newStyle.DataBind();
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
                            newColor.DataSource = rdr;
                            newColor.DataTextField = "descripcion";
                            newColor.DataValueField = "id";
                            newColor.DataBind();
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
                            newSubCat.DataSource = rdr;
                            newSubCat.DataTextField = "descripcion";
                            newSubCat.DataValueField = "id";
                            newSubCat.DataBind();
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
                            newCat.DataSource = rdr;
                            newCat.DataTextField = "descripcion";
                            newCat.DataValueField = "id";
                            newCat.DataBind();
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
                            newFerType.DataSource = rdr;
                            newFerType.DataTextField = "descripcion";
                            newFerType.DataValueField = "id";
                            newFerType.DataBind();
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

               

            }
            else
            {
                ViewState["PostID"] = Session["PostID"].ToString();
                Response.Redirect("new-beer.aspx", true);

            }
        }
    }

    protected void registrarCerveza(object sender, EventArgs e)
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
            using (MySqlCommand cmd = new MySqlCommand("InsertCerveza",connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("pNombre", newName.Text);
                cmd.Parameters["pNombre"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pDescripcion", newDescription.Text);
                cmd.Parameters["pDescripcion"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pTiempoFermentacion", newFerTime.Text);
                cmd.Parameters["pTiempoFermentacion"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pTemperatura", newTemp.Text);
                cmd.Parameters["pTemperatura"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pPrecio", newPrice.Text);
                cmd.Parameters["pPrecio"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pIdTipoFermentacion", newFerType.SelectedValue);
                cmd.Parameters["pIdTipoFermentacion"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pIdColor", newColor.SelectedValue);
                cmd.Parameters["pIdColor"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pIdEstilo", newStyle.SelectedValue);
                cmd.Parameters["pIdEstilo"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pIdCuerpo", newBody.SelectedValue);
                cmd.Parameters["pIdCuerpo"].Direction = ParameterDirection.Input;
                cmd.Parameters.AddWithValue("pIdSubCategoria", newSubCat.SelectedValue);
                cmd.Parameters["pIdSubCategoria"].Direction = ParameterDirection.Input;
                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("products.aspx");
    }
}