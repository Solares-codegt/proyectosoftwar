using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROYECTOFINAL
{
    public partial class CRUD : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static string sID = "-1";
        public static string sOpc = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            //Obtener el id
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    sID = Request.QueryString["id"].ToString();
                    CargarDatos();
                }
                if (Request.QueryString["op"] != null)
                {
                    sOpc = Request.QueryString["op"].ToString();
                    switch (sOpc)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingrese nuevo cliente";
                            this.BtnCreate.Visible = true;
                            break;
                        case "R":
                            this.lbltitulo.Text = "Consulta de clientes";
                            break;
                        case "U":
                            this.lbltitulo.Text = "Modificar Cliente";
                            this.BtnUpdate.Visible = true;
                            break;
                        case "D":
                            this.lbltitulo.Text = "Eliminar cliente";
                            this.BtnDelete.Visible = true;
                            break;
                    }
                }
            }
        }

            void CargarDatos()
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("sd_read", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
                DataSet ds = new DataSet();
                ds.Clear();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                DataRow row = dt.Rows[0];
                tbtnombre.Text = row[1].ToString();
                tbtapellido.Text = row[2].ToString();
                tbtcui.Text = row[3].ToString();
                tbtnit.Text = row[4].ToString();
                tbtDireccion.Text = row[5].ToString();
                tbtcorreo.Text = row[6].ToString();
                con.Close();


            }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {
                SqlCommand cmd = new SqlCommand("sp_create", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@nombre", SqlDbType.NVarChar).Value = tbtnombre.Text; ;
                cmd.Parameters.Add("@apellido", SqlDbType.NVarChar).Value = tbtapellido.Text; ;
                cmd.Parameters.Add("@cui", SqlDbType.NVarChar).Value = tbtcui.Text; ;
                cmd.Parameters.Add("@nit", SqlDbType.NVarChar).Value = tbtnit.Text; ;
                cmd.Parameters.Add("@direccion", SqlDbType.NVarChar).Value = tbtDireccion.Text; ;
                cmd.Parameters.Add("@correo", SqlDbType.NVarChar).Value = tbtcorreo.Text; ;
                cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
            }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("sp_update", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = sID;
            cmd.Parameters.Add("@apellido", SqlDbType.NVarChar).Value = tbtapellido.Text; ;
            cmd.Parameters.Add("@cuid", SqlDbType.NVarChar).Value = tbtcui.Text; ;
            cmd.Parameters.Add("@nit", SqlDbType.NVarChar).Value = tbtnit.Text; ;
            cmd.Parameters.Add("@direccion", SqlDbType.NVarChar).Value = tbtDireccion.Text; ;
            cmd.Parameters.Add("@correo", SqlDbType.NVarChar).Value = tbtcorreo.Text; ;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_delete", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}