using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAL
{
    public interface ILecturasDAL
    {
        List<Lectura> Filtrar(int medidor);
        void AgregarLectura(Lectura lectura);

        List<Lectura> ObtenerLecturas();

    }
}