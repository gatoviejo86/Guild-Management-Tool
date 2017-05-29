using System;
using System.Collections.Generic;
using System.Linq;
using WowDotNetAPI;
using WowDotNetAPI.Models;

namespace Guild_Management_Tool.Clases
{
    internal class C_WoWExplorador
    {
        public C_Hermandad Guild_TraerTodaLaInformacion(string strRegion, string strNombreHermandad)
        {
            WowDotNetAPI.Region objRegion = new Region();
            if (strRegion.Equals("CN"))
            {
                objRegion = Region.CN;
            }
            else if (strRegion.Equals("EU"))
            {
                objRegion = Region.EU;
            }
            else if (strRegion.Equals("KR"))
            {
                objRegion = Region.KR;
            }
            else if (strRegion.Equals("SEA"))
            {
                objRegion = Region.SEA;
            }
            else if (strRegion.Equals("TW"))
            {
                objRegion = Region.TW;
            }
            else if (strRegion.Equals("US"))
            {
                objRegion = Region.US;
            }
            C_Hermandad objHermandadReturn = new C_Hermandad();
            Guild objGuild = new Guild();
            try
            {
                WowExplorer explorer = new WowExplorer(objRegion, Locale.es_MX, "yk7w7yxambnk46chwqpqguzm5ae4kahu");
                objGuild = explorer.GetGuild("ragnaros", "La Orden del León", GuildOptions.GetMembers);
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);//throw;
            }
            objHermandadReturn.Nombre = objGuild.Name;
            List<C_Personaje> pjs = new List<C_Personaje>();
            int count = 0;
            foreach (GuildMember item in objGuild.Members)
            {
                count++;
                WowExplorer explorer = new WowExplorer(objRegion, Locale.es_MX, "yk7w7yxambnk46chwqpqguzm5ae4kahu");
                Character objCharacter = explorer.GetCharacter(item.Character.GuildRealm, item.Character.Name, CharacterOptions.GetEverything);
                //cambiar pj por objCharacter y guardar mas datos como ilvl
                C_Personaje pj = new C_Personaje();
                pj.Nombre = item.Character.Name;
                pj.Raza = Convert.ToInt16(item.Character.Race);
                pj.RangoEnHermandad = item.Rank;
                pj.Estado = Convert.ToChar("V");
                pj.Genero = Convert.ToInt16(item.Character.Gender);
                pj.Nivel = item.Character.Level;

                C_Reino reino = new C_Reino();
                reino.IdReino = 1;
                reino.Nombre = item.Character.GuildRealm;
                reino.Estado = Convert.ToChar("V");
                reino.Zona = strRegion; //Convert.ToChar("V");
                pj.Reino = reino;

                C_Hermandad hermandad = new C_Hermandad() ;
                hermandad.IdHermandad = 1;
                hermandad.Reino = reino;
                hermandad.Estado = Convert.ToChar("V");
                hermandad.Faccion = Convert.ToInt16(objGuild.Side);
                pj.Hermandad = hermandad;

                pjs.Add(pj);
            }
            objHermandadReturn.Personaje = pjs;

            foreach (C_Personaje pj in objHermandadReturn.Personaje)
            {
                pj.GuardarPersonaje();
            }
            return objHermandadReturn;
        }

        private void ProbarExploradorWoW()
        {
            WowExplorer explorer = new WowExplorer(Region.US, Locale.es_ES, "yk7w7yxambnk46chwqpqguzm5ae4kahu");

            Guild objGuild = explorer.GetGuild("ragnaros", "La Orden del León", GuildOptions.GetEverything);

            Console.WriteLine("\n\nGUILD EXPLORER SAMPLE\n");

            Console.WriteLine("{0} is a guild of level {1} and has {2} members.",
                objGuild.Name,
                objGuild.Level,
                objGuild.Members.Count());

            //Print out first top 20 ranked members of Immortality
            foreach (GuildMember member in objGuild.Members.OrderBy(m => m.Rank).Take(20))
            {
                Console.WriteLine(member.Character.Name + " has rank " + member.Rank);
            }

            Console.WriteLine("\n\nCHARACTER EXPLORER SAMPLE\n");
            Character objCharacter =
                explorer.GetCharacter("Ragnaros", "Gatoviejo", CharacterOptions.GetStats | CharacterOptions.GetAchievements);

            Console.WriteLine("{0} is a retired warrior of level {1} who has {2} achievement points having completed {3} achievements",
                objCharacter.Name,
                objCharacter.Level,
                objCharacter.AchievementPoints,
                objCharacter.Achievements.AchievementsCompleted.Count());

            foreach (KeyValuePair<string, object> stat in objCharacter.Stats)
            {
                Console.WriteLine(stat.Key + " : " + stat.Value);
            }

            //Get one realm
            IEnumerable<Realm> usRealms = explorer.GetRealms();
            Realm skullcrusher = usRealms.First(r => r.Name == "Skullcrusher");

            //Get all pvp realms only
            IEnumerable<Realm> pvpRealmsOnly = usRealms.Where(r => r.Type == RealmType.PVP);
            Console.WriteLine("\n\nREALMS EXPLORER SAMPLE\n");
            foreach (var realm in pvpRealmsOnly)
            {
                Console.WriteLine("{0} has {1} population", realm.Name, realm.population);
            }

            Console.WriteLine("\n\nGUILD PERKS\n");

            IEnumerable<GuildPerkInfo> perks = explorer.GetGuildPerks();
            foreach (var perk in perks)
            {
                Console.WriteLine("{0} perk at guild level {1}", perk.Spell.Name, perk.GuildLevel);
            }

            Console.WriteLine("\n\nGUILD REWARDS\n");

            IEnumerable<GuildRewardInfo> rewards = explorer.GetGuildRewards();
            foreach (var reward in rewards)
            {
                Console.WriteLine("{0} reward at min guild level {1}", reward.Item.Name, reward.MinGuildLevel);
            }

            Console.WriteLine("\n\nCHARACTER RACES\n");

            IEnumerable<CharacterRaceInfo> races = explorer.GetCharacterRaces();
            foreach (var race in races.OrderBy(r => r.Id))
            {
                Console.WriteLine("{0} race with numeric value {1}", race.Name, race.Id);
            }

            Console.WriteLine("\n\nCHARACTER CLASSES\n");

            IEnumerable<CharacterClassInfo> classes = explorer.GetCharacterClasses();
            foreach (var @class in classes.OrderBy(c => c.Id))
            {
                Console.WriteLine("{0} class with numeric value {1}", @class.Name, @class.Id);
            }
        }
    }
}