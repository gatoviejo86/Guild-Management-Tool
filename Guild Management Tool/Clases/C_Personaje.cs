using System;
using System.Data.SqlClient;

namespace Guild_Management_Tool.Clases
{
    internal class C_Personaje
    {
        #region Propiedades

        public int IdPersonaje { get; set; }
        public C_Persona Persona { get; set; }
        public C_Reino Reino { get; set; }
        public C_Hermandad Hermandad { get; set; }
        public int RangoEnHermandad { get; set; }
        public string Nombre { get; set; }
        public int Genero { get; set; }
        public int Nivel { get; set; }
        public int NivelObjetoPromedio { get; set; }
        public int NivelObjetoEquipado { get; set; }
        public int Raza { get; set; }
        public char Estado { get; set; }

        #endregion Propiedades

        public string GuardarPersonaje()
        {
            string nombreProcedimiento = "WoW_Personaje_Guardar";
            SqlParameter pIdPersonaje = C_Conexion.Parametro("@p_id_personaje", System.Data.SqlDbType.Int, IdPersonaje.ToString());
            SqlParameter pIdPersona = C_Conexion.Parametro("@p_id_persona", System.Data.SqlDbType.Int, null);//Persona.IdPersona.ToString()
            SqlParameter pIdReino = C_Conexion.Parametro("@p_id_reino", System.Data.SqlDbType.Int, Reino.IdReino.ToString());
            SqlParameter pIdHermandad = C_Conexion.Parametro("@p_id_hermandad", System.Data.SqlDbType.Int, Hermandad.IdHermandad.ToString());
            SqlParameter pRangoEnHermandad = C_Conexion.Parametro("@p_rango_hermandad", System.Data.SqlDbType.Int, RangoEnHermandad.ToString());
            SqlParameter pNombre = C_Conexion.Parametro("@p_nombre", System.Data.SqlDbType.VarChar, Nombre.ToString());
            SqlParameter pGenero = C_Conexion.Parametro("@p_genero", System.Data.SqlDbType.Int, Genero.ToString());
            SqlParameter pNivel = C_Conexion.Parametro("@p_nivel", System.Data.SqlDbType.Int, Nivel.ToString());
            SqlParameter pNivelObjProm = C_Conexion.Parametro("@p_nivel", System.Data.SqlDbType.Int, NivelObjetoPromedio.ToString());
            SqlParameter pNivelObjEqui = C_Conexion.Parametro("@p_nivel", System.Data.SqlDbType.Int, NivelObjetoEquipado.ToString());
            SqlParameter pRaza = C_Conexion.Parametro("@p_raza", System.Data.SqlDbType.Int, Raza.ToString());
            SqlParameter pEstado = C_Conexion.Parametro("@p_estado", System.Data.SqlDbType.Char, Estado.ToString() );
            return C_Conexion.Escribir(C_Conexion.Procedimiento(nombreProcedimiento, pIdPersonaje, pIdPersona, pIdReino, pIdHermandad, pRangoEnHermandad, pNombre, pGenero, pNivel, pNivelObjProm, pNivelObjEqui, pRaza));
        }
    }
}