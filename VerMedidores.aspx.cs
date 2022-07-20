using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;
using Model.DAL;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjercicioPrueba4
{
    public partial class VerMedidores : System.Web.UI.Page
    {
        private IMedidorDAL medidorDAL = new MedidorDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrilla();
            }

        }

        private void cargarGrilla()
        {
            List<Medidor> medidor = medidorDAL.ObtenerMedidores();

            this.grillaMedidores.DataSource = medidor;
            this.grillaMedidores.DataBind();
        }

        private void cargaGrilla(List<Medidor> filtrada)
        {
            List<Medidor> medidor = medidorDAL.ObtenerMedidores();
            this.grillaMedidores.DataSource = filtrada;
            this.grillaMedidores.DataBind();
        }


        protected void grillaMedidores_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void nivelDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.nivelDdl.SelectedItem != null)
            {
                string tipo = this.nivelDdl.SelectedItem.Value;
                //filtrar por nivel
                List<Medidor> filtrada = medidorDAL.Obtener(tipo);
                cargaGrilla(filtrada);
            }
        }



    }
}