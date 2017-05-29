using System;
using System.Data;
using System.Data.SqlClient;

namespace Guild_Management_Tool.Clases
{
    internal class C_Conexion
    {
        #region Conexión

        private static SqlConnection conex = null;

        private static void Abrir()
        {
            try
            {
                conex = new SqlConnection(Properties.Settings.Default.BD_ConnectionString);
                conex.Open();
            }
            catch (SqlException ex)
            {
                System.Windows.Forms.MessageBox.Show("SqlException Exception Type: " + ex.GetType().ToString() + Environment.NewLine + "Message: " + ex.Message);
            }
        }

        private static void Cerrar()
        {
            try
            {
                conex.Close();
            }
            catch (SqlException ex)
            {
                System.Windows.Forms.MessageBox.Show("SqlException Exception Type: " + ex.GetType().ToString() + Environment.NewLine + "Message: " + ex.Message);
            }
        }

        private static SqlTransaction Transaccion()
        {
            return conex.BeginTransaction();
        }

        private static SqlConnection Conexion
        {
            get { return conex; }
        }

        #endregion Conexión

        #region Funciones Públicas

        public static DataSet Consultar(string procedimiento, params SqlParameter[] parametros)
        {
            SqlCommand cmd = new SqlCommand(procedimiento, Conexion);
            DataSet ds = new DataSet();
            try
            {
                Abrir();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                for (int i = 0; i <= parametros.Length - 1; i++)
                {
                    da.SelectCommand.Parameters.Add(i);
                }
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Connection = Conexion;
                da.Fill(ds);
                Cerrar();
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("SqlException Exception Type: " + ex.GetType().ToString() + Environment.NewLine + "Message: " + ex.Message);
            }
            if (ds.Tables.Count > 0)
            {
                return ds;
            }
            else
            {
                return new DataSet();
            }
        }

        public static string Escribir(params SqlCommand[] cmd)
        {
            SqlTransaction tra = default(SqlTransaction);
            string confirmacion = "";
            int contador = 0;
            try
            {
                Abrir();
                tra = Transaccion();
                for (int i = 0; i <= cmd.Length - 1; i++)
                {
                    contador = i;
                    cmd[i].Transaction = tra;
                    cmd[i].Connection = Conexion;
                    if (cmd[i].ExecuteNonQuery() > 0)
                    {
                        confirmacion = "ok";
                    }
                }
                tra.Commit();
                Cerrar();
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("SqlException Exception Type: " + ex.GetType().ToString() + Environment.NewLine + "Message: " + ex.Message);
                try
                {
                    tra = cmd[contador].Transaction;
                    tra.Rollback();
                }
                catch (Exception ex2)
                {
                    System.Windows.Forms.MessageBox.Show("SqlException Exception Type: " + ex2.GetType().ToString() + Environment.NewLine + "Message: " + ex2.Message);
                }
            }
            return confirmacion;
        }

        public static SqlCommand Procedimiento(string procedimiento1, params SqlParameter[] parametros)
        {
            SqlCommand cmd = new SqlCommand(procedimiento1, Conexion);
            for (int i = 0; i <= parametros.Length - 1; i++)
            {
                cmd.Parameters.Add(parametros[i]);
            }
            cmd.CommandType = CommandType.StoredProcedure;
            return cmd;
        }

        public static SqlParameter Parametro(string nombre, SqlDbType tipo, string valor = null)
        {
            SqlParameter para = new SqlParameter(nombre, tipo);
            para.Value = valor;
            return para;
        }

        #endregion Funciones Públicas
    }
}