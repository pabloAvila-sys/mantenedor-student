
namespace PruebaTecnica1
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblEstudiantes
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public Nullable<System.DateTime> Fecha_Nacimiento { get; set; }
        public string Carrera { get; set; }
    }
}
