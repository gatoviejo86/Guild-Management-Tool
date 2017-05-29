namespace Guild_Management_Tool.Clases
{
    internal class C_Persona
    {
        public int IdPersona { get; set; }
        public string Nombres { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public string CodPaisAlfa3 { get; set; }
        public C_Personaje[] Personaje { get; set; }
    }
}