using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAL
{
    public interface IMedidorDAL
    {
        List<Medidor> ObtenerMedidores();

        List<Medidor> Obtener(string tipo);

        void AgregarMedidor(Medidor medidor);
        List<Medidor> Buscar(int id);


    }
}