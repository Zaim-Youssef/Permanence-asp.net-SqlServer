using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
namespace Permanence
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string cn1 = @"Data source=.\SQLEXPRESS;initial catalog=Permanence; integrated security=true";
                    SqlConnection cnx1 = new SqlConnection(cn1);
                    string query1 = "select g.matricule as 'CODE',g.nomagent as 'NOM',g.prenomagent as 'PRENOM',f.nomf as 'FONCTION' ,e.nomentity as 'ENTITY',telagent as 'TELEPHONE','' as 'HISTORIQUE AGENT','' as 'AJOUTER AGENT' from  entity e ,agent g , fonction f where  g.idf=f.idf and e.ident = g.Ide";
                    SqlCommand cmd1 = new SqlCommand(query1, cnx1);
                    if (cnx1.State == System.Data.ConnectionState.Open)
                    {
                        cnx1.Close();
                    }
                    cnx1.Open();
                    DataTable dt1 = new DataTable();

                    dt1.Load(cmd1.ExecuteReader());
                    GridView1.DataSource = dt1;
                    GridView1.DataBind();
                    int i;
                    for (i = 0; i < GridView1.Rows.Count; i++)
                    {
                        GridView1.Rows[i].Cells[6].Text = @"<a href='HistoriqueAgent.aspx?cm=" + GridView1.Rows[i].Cells[0].Text + "'>HISTORIQUE </a>";

                        GridView1.Rows[i].Cells[7].Text = @"<a href='AjoutPermanenceAgent?apa=" + GridView1.Rows[i].Cells[0].Text + "'>AJOUTER </a>";

                        cnx1.Close();
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }



                try
                {
                    string cn2 = @"Data source=.\SQLEXPRESS;initial catalog=Permanence; integrated security=true";
                    SqlConnection cnx2 = new SqlConnection(cn2);
                    string query2 = "select p.idpermanence as  'PERMANENCE',a.dateag as 'DATE DEBUT' ,a.datefin as 'DATE FIN' ,a.semainechar as 'SEMAINE',g.nomagent  as 'NOM',g.prenomagent as 'PRENOM',f.nomf as 'FONCTION',g.telagent as 'TELEPHONE' ,e.nomentity as 'ENTITY', p.idagent as 'AGENT','' as 'MODIFIER TACHE' from permanence p, agent g, agenda a, Entity e, fonction f where p.idagent = g.matricule and g.Ide = e.ident   and a.idagenda = p.idag and f.idf = g.idf";
                    SqlCommand cmd2 = new SqlCommand(query2, cnx2);
                    if (cnx2.State == System.Data.ConnectionState.Open)
                    {
                        cnx2.Close();
                    }
                    cnx2.Open();
                    DataTable dt2 = new DataTable();
                    dt2.Load(cmd2.ExecuteReader());
                    GridView2.DataSource = dt2;
                    GridView2.DataBind();
                    int s;
                    for (s = 0; s < GridView2.Rows.Count; s++)
                    {

                        GridView2.Rows[s].Cells[10].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + GridView2.Rows[s].Cells[0].Text + "'  > MODIFIER </ a >";

                    }
                    cnx2.Close();
                }

                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }


            }
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/recherche.aspx");

        }

       
    }
}