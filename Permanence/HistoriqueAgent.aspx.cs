using System;
using System.Data;

namespace Permanence
{
    public partial class HistoriqueAgent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string cm1 = Request.QueryString["cm"];
                Console.WriteLine(cm1);
                Label1.Text = cm1;
                if (cm1 != null)

                {
                    if (Global.cnx.State == System.Data.ConnectionState.Open) { Global.cnx.Close(); }
                    Global.cnx.Open();
                    Global.cmd.CommandText = "select p.idpermanence as  'PERMANENCE',a.dateag as 'DATE DEBUT' ,a.datefin as 'DATE FIN' ,a.semainechar as 'SEMAINE',g.nomagent as 'NOM',g.prenomagent as 'PRENOM',f.nomf as 'FONCTION',g.telagent as 'TELEPHONE' ,e.nomentity as 'ENTITY', p.idagent as 'AGENT' from permanence p, agent g, agenda a, Entity e, fonction f where p.idagent = g.matricule and g.Ide = e.ident   and a.idagenda = p.idag and f.idf = g.idf and g.matricule= '" + int.Parse(cm1) + "' ";


                    DataTable dtha = new DataTable();
                    dtha.Load(Global.cmd.ExecuteReader());
                    GridView1.DataSource = dtha;
                    GridView1.DataBind();
                    Global.cnx.Close();
                }
                else
                {


                    Label1.Text = "query string invalide";
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }


        }
    }
}