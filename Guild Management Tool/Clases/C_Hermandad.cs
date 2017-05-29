using System.Collections.Generic;

namespace Guild_Management_Tool.Clases
{
    internal class C_Hermandad
    {
        public int IdHermandad { get; set; }
        public char Estado { get; set; }
        public C_Reino Reino { get; set; }
        public string Nombre { get; set; }
        public int Faccion { get; set; }
        public int PuntosLogro { get; set; }

        //public C_Personaje[] Personaje { get; set; }
        public List<C_Personaje> Personaje { get; set; }
    }
}