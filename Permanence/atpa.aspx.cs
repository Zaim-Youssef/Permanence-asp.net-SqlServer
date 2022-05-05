using System;
using System.Data;
using System.Data.SqlClient;
namespace Permanence
{
    public partial class atpa : System.Web.UI.Page
    {
        public static string cm1;
        public static string s;
        public static string p;
        protected void Page_Load(object sender, EventArgs e)
        {
            cm1 = (string)Session["agent"];

            try
            {



                Label1.Text = cm1.ToString();
                if (cm1 != null)

                {
                    string cnha = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                    SqlConnection cnxha = new SqlConnection(cnha);
                    string query1 = "select p.idpermanence as 'PERMANENCE' , p.idag as 'AGENT' ,a.dateag as 'DATE DEBUT',a.datefin  as 'DATE FIN',e.nomentity as 'ENTITY',p.validation  as 'VALIDATION', '' as 'AJOUTER TACHE' from permanence p, agent g, agenda a , entity e  where   p.idagent = g.matricule  and p.idag = a.idagenda and e.ident=g.Ide and p.idagent = '" + int.Parse(cm1) + "'";




                    SqlCommand cmdha = new SqlCommand(query1, cnxha);

                    if (cnxha.State == System.Data.ConnectionState.Open) { cnxha.Close(); }
                    cnxha.Open();
                    DataTable dtha = new DataTable();
                    dtha.Load(cmdha.ExecuteReader());
                    GridView1.DataSource = dtha;
                    GridView1.DataBind();
                    int n;

                    p = dtha.Rows[0][0].ToString();

                    for (n = 0; n < GridView1.Rows.Count; n++)
                    {
                        if (GridView1.Rows[n].Cells[5].Text != "valider")
                        {

                            GridView1.Rows[n].Cells[6].Text = @"<a href= 'Ajoutertacheagent?ajt=" + GridView1.Rows[n].Cells[0].Text + "'  > nouvelle tache </ a >";

                            s = GridView1.Rows[n].Cells[0].Text;

                            if (n == GridView1.Rows.Count)
                            {

                                break;
                            }
                        }

                    }



                    cnxha.Close();

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

            try
            {
                Global.cmd.CommandText = "select matricule ,  prenomagent+' '+nomagent from agent  where matricule='" + cm1 + "'";

                if (Global.cnx.State == System.Data.ConnectionState.Open)
                    Global.cnx.Close();
                Global.cnx.Open();
                Global.rd = Global.cmd.ExecuteReader();
                if (Global.rd.Read())
                {
                    TextBox1.Text = Global.rd.GetInt32(0).ToString();
                    TextBox2.Text = Global.rd.GetString(1);
                }
                Global.cnx.Close();
                Global.rd.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }


            try
            {
                Global.cmd.CommandText = "  select p.idpermanence as 'PERMANENCE',a.semainechar as 'SEMAINE',a.dateag  as 'DATE DEBUT',a.datefin as 'DATE FIN',j.nomjour AS 'JOUR',pt.typetache as  'TYPE TACHE',pt.description as  'DESCRIPTION' ,t.nomtache as 'NOM TACHE','' as modifier from agenda a,permanencetache pt ,tache t , permanence p ,jour j  where p.idjour=j.idj and t.idtache=pt.tachej and p.idpermanence=pt.permanencej and p.idag=a.idagenda  and p.idagent ='" + int.Parse(cm1) + "'";


                if (Global.cnx.State == System.Data.ConnectionState.Open)
                    Global.cnx.Close();
                Global.cnx.Open();
                DataTable dt = new DataTable();
                dt.Load(Global.cmd.ExecuteReader());

                GridView2.DataSource = dt;
                GridView2.DataBind();
                for (int m = 0; m < GridView2.Rows.Count; m++)
                {

                    GridView2.Rows[m].Cells[8].Text = @"<a href= 'Ajoutertacheagent?idt=" + GridView2.Rows[m].Cells[0].Text + "'  > modifier tache </ a >";

                    if (m == GridView2.Rows.Count)
                    {

                        break;
                    }

                }
                Global.cnx.Close();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}