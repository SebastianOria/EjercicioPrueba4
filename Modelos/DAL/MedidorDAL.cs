using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.DAL
{
    public class MedidorDAL : IMedidorDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public List<Medidor> ObtenerMedidores()
        { 
            return this.medidoresDB.Medidors.ToList();
        }
        public void AgregarMedidor(Medidor medidor)
        {
            this.medidoresDB.Medidors.Add(medidor);
            this.medidoresDB.SaveChanges();
        }

        public List<Medidor> Obtener(string tipo)
        {
            var query = from a in this.medidoresDB.Medidors
                        where a.Tipo == tipo
                        select a;
            return query.ToList();
        }
    }
}
