using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAL
{
    public class LecturasDAL : ILecturasDAL
    {
        private MedidoresDBEntities lecturasDB = new MedidoresDBEntities();

        public List<Lectura> ObtenerLecturas()
        {
            return this.lecturasDB.Lecturas.ToList();

        }

        public void AgregarLectura(Lectura lectura)
        {
            this.lecturasDB.Lecturas.Add(lectura);
            this.lecturasDB.SaveChanges();
        }

        public List<Lectura> Filtrar(int medidor)
        {
            var query = from a in this.lecturasDB.Lecturas
                        where a.IdMedidor == medidor
                        select a;
            return query.ToList();
        }

    }
}
