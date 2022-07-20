using System;
using Model;
using Model.DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjercicioPrueba4
{
    public partial class Default : Page
    {
        private IMedidorDAL medidorDAL = new MedidorDAL();
        //Gabriel Escriba - Sebastian Oria//

        /// <summary>
        /// Este metodo se ejecuta 
        /// - Cuando es una peticion GET (!PostBack)
        /// - cunado es una peticion POST (PostBack
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void agregarBtn_Click(object sender, EventArgs e)
        {


            //1. Obtener los datos del formulario
            int id =Convert.ToInt32(this.nombreTxt.Text.Trim());
            string nivel = this.nivelRbl.SelectedValue;

         


            //2. construir el objeto de tipo cliente
            

                Medidor medidor = new Medidor()
                {
                    Id = id,
                    Tipo = nivel,

                };



                //3. Llamar al DAL
                medidorDAL.AgregarMedidor(medidor);
                //4. Mostrar mensajae de exito
                this.mensajeLbl.Text = "Medidor Agregar Exitosamente";
               


            }
           

        }


    }





