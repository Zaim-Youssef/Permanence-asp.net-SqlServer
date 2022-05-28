using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web;
namespace Permanence
{
    public partial class _Default : Page
    {
        DataTable dt = new DataTable();
        public static string reqintial;
        public static string m;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            //Panel1.Visible = false;
            m = (string)Session["agent"];
            
            if (Global.globalvadmin == "admin")
            {
                afficheragentconnecter();
                afficherlisteagent();



            }
            else
            {

                Response.Redirect("~/connexionpage.aspx");






                //


            }
        }
   
        

        protected void afficheragentconnecter()
        {
            try
            {


                string cn1 = @"Data source=.\SQLEXPRESS;initial catalog=Permanence; integrated security=true";
                SqlConnection cnx1 = new SqlConnection(cn1);
                string query1 = "select g.matricule as 'CODE',g.prenomagent +' '+ g.nomagent from  agent g  where  g.matricule='" + int.Parse(m) + "' ";
                SqlCommand cmd1 = new SqlCommand(query1, cnx1);
                if (cnx1.State == System.Data.ConnectionState.Open)
                {
                    cnx1.Close();
                }
                cnx1.Open();
                SqlDataReader rd;
                rd = cmd1.ExecuteReader();



                if (rd.Read())
                {
                    TextBox9.Text = rd.GetInt32(0).ToString();
                    TextBox10.Text = rd.GetString(1).ToString();
                }
                cnx1.Close();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
   

        protected void permanencestandard(object sender, EventArgs e)
        {
            Response.Redirect("~/permanencestandard.aspx");

        }
        protected void redirectpu(object sender, EventArgs e)
        {
            Response.Redirect("~/Permanenceurgente.aspx");

        }
        protected void redirectrecherche(object sender ,EventArgs e)
        {
            Response.Redirect("~/recherche.aspx");

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/recherche.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Panel1.Visible = true;
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            //Panel1.Visible = false;
            if (dt.Rows != null)
            {
                dt.Clear();
            }

            try
            {
                if (Global.cnx.State == System.Data.ConnectionState.Open)
                {
                    Global.cnx.Close();
                }
                Global.cnx.Open();
                reqintial = @"select g.matricule as 'MATRICULE' ,g.nomagent AS 'NOM',g.prenomagent AS'PRENOM',chefdep_id as ' CODE_CHEF' ,g.telagent AS 'TEL' ,g.adresse  AS 'ADRESSE',f.nomf 'FONCTION',e.nomentity AS 'ENTITE','' as 'HISTORIQUE AGENT','' as 'AJOUTER AGENDA'from  agent g, Entity e, fonction f   where     g.Ide = e.ident    and f.idf =g.idf  and 1=1";

                if (CheckBox1.Checked)
                {
                    reqintial += " and g.matricule='" + int.Parse(TextBox1.Text) + "' ";
                }
                if (CheckBox2.Checked)
                {
                    reqintial += " and f.nomf='" + (TextBox2.Text) + "' ";
                }
              
                    if (CheckBox4.Checked)
                {

                    string n = TextBox4.Text;
                    reqintial += " and g.nomagent like '" + n + "' ";
                    //reqintial += " and g.nomagent like @nomagent ";
                    //Global.cmd.Parameters.Add("nomagent", SqlDbType.NVarChar).Value=n+"%";                
                }
                if (CheckBox5.Checked)
                {

                    string m = TextBox5.Text;
                    reqintial += " and g.prenomagent = '" + m + "' ";

                }
                if (CheckBox7.Checked)
                {


                    reqintial += " and e.nomentity = '" + TextBox8.Text + "' ";

                }
                DataTable dta = new DataTable();
                Global.cmd.CommandText = reqintial;
                dta.Load(Global.cmd.ExecuteReader());
                GridView1.Columns.Clear();
                GridView1.DataSource = dta;
                GridView1.DataBind();

                int i;
                for (i = 0; i < GridView1.Rows.Count; i++)
                {
                    GridView1.Rows[i].Cells[8].Text = @"<a href='HistoriqueAgent.aspx?cm=" + GridView1.Rows[i].Cells[0].Text + "'>HISTORIQUE </a>";

                    GridView1.Rows[i].Cells[9].Text = @"<a href='AjoutPermanenceAgent?apa=" + GridView1.Rows[i].Cells[0].Text + "'>AJOUTER </a>";

                    Global.cnx.Close();
                }


            }
            catch (Exception ex) { Label1.Text = ex.Message; }
        }

        protected void afficherlisteagent()
        {
            //Panel1.Visible = false;
            if (dt.Rows != null)
            {
                dt.Clear();
            }

            try
            {
                if (Global.cnx.State == System.Data.ConnectionState.Open)
                {
                    Global.cnx.Close();
                }
                Global.cnx.Open();
                string ag = @"select g.matricule as 'MATRICULE' ,g.nomagent AS 'NOM',g.prenomagent AS'PRENOM',chefdep_id as ' CODE_CHEF' ,g.telagent AS 'TEL' ,g.adresse  AS 'ADRESSE',f.nomf 'FONCTION',e.nomentity AS 'ENTITE','' as 'HISTORIQUE AGENT','' as 'AJOUTER AGENT'from  agent g, Entity e, fonction f   where     g.Ide = e.ident    and f.idf =g.idf  and 1=1";



                Global.cmd.CommandText = ag;
            dt.Load(Global.cmd.ExecuteReader());

            GridView1.DataSource = dt;
            GridView1.DataBind();

            int i;
            for (i = 0; i < GridView1.Rows.Count; i++)
            {
                GridView1.Rows[i].Cells[8].Text = @"<a href='HistoriqueAgent.aspx?cm=" + GridView1.Rows[i].Cells[0].Text + "'>HISTORIQUE </a>";

                GridView1.Rows[i].Cells[9].Text = @"<a href='AjoutPermanenceAgent?apa=" + GridView1.Rows[i].Cells[0].Text + "'>AJOUTER </a>";

                Global.cnx.Close();
            }


        }
            catch (Exception ex) { Label1.Text = ex.Message; }

}

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";

            Response.Redirect("inscription.aspx");
        }
    }
}