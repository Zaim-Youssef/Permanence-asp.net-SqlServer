using System;
using System.Data;

namespace Permanence
{
    public partial class recherche : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click2(object sender, EventArgs e)
        {
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
                string reqintial = @"select g.nomagent ,chefdep_id as 'chef dep'  ,f.nomf ,e.nomentity,a.dateag,a.datefin,a.datedebutchar,a.semainechar from permanence p, agent g, agenda a, Entity e, fonction f   where     p.idagent = g.matricule and g.Ide = e.ident   and a.idagenda = p.idag and f.idf =g.idf and 1=1";

                if (CheckBox1.Checked)
                {
                    reqintial += " and g.matricule='" + int.Parse(TextBox1.Text) + "' ";
                }
                if (CheckBox2.Checked)
                {
                    reqintial += " and g.idf='" + int.Parse(TextBox2.Text) + "' ";
                }
                if (CheckBox3.Checked)
                {
                    reqintial += " and p.idag='" + int.Parse(TextBox3.Text) + "' ";
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
                    reqintial += " and g.nomagent = '" + m + "' ";

                }
                if (CheckBox7.Checked)
                {


                    reqintial += " and e.nomentity = '" + TextBox8.Text + "' ";

                }
                if (CheckBox6.Checked)
                {


                    reqintial += " and a.dateag between '" + TextBox6.Text + "' and '" + TextBox7.Text + "'  ";

                }
                Global.cmd.CommandText = reqintial;
                dt.Load(Global.cmd.ExecuteReader());
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex) { Label1.Text = ex.Message; }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}