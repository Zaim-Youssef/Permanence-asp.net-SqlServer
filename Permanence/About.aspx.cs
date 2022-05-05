using System;
using System.Data;
using System.Web.UI;

namespace Permanence
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                if (DropDownList1.SelectedValue == "idagent")
                {
                    if (Global.cnx.State == System.Data.ConnectionState.Open)
                    {
                        Global.cnx.Close();
                    }
                    Global.cmd.CommandText = "select g.nomagent ,chefdep_id  as 'chef dep'  ,f.nomf ,e.nomentity,a.dateag,a.datefin,a.datedebutchar,a.semainechar from permanence p, agent g, agenda a, Entity e, fonction f where     p.idagent = g.matricule and g.Ide = e.ident   and a.idagenda = p.idag and f.idf = g.idf and g.matricule='" + int.Parse(TextBox1.Text) + "' ";
                    DataTable dt = new DataTable();
                    dt.Load(Global.cmd.ExecuteReader());
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }

            }



            catch (Exception ex) { Label1.Text = ex.Message; }
        }
    }
}