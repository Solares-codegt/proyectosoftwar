using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PROYECTOFINAL
{
    public partial class CRUDCLIENTES : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarTabla();
        }

        void cargarTabla()
        {
            SqlCommand cmd = new SqlCommand("sp_load",con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gclientes.DataSource = dt;
            gclientes.DataBind();
            con.Close();
        }
        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CRUDCLIENTES.aspx?op=C");
        }

        protected void BtnRead_Click(object sender, EventArgs e)
        {
            String id;
            Button btnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)btnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/CRUDCLIENTES.aspx?id="+id+"&op=R");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            String id;
            Button btnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)btnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/CRUDCLIENTES.aspx?id=" + id + "&op=U");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {

            String id;
            Button btnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)btnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/CRUDCLIENTES.aspx?id=" + id + "&op=D");
        }
    }
}