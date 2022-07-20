using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.DAL
{
    public interface IMedidorDAL
    {
        List<Medidor> ObtenerMedidores();

        Medidor Obtener(string tipo);

        void AgregarMedidor(Medidor medidor);

      
    }
}
