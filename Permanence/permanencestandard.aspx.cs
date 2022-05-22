using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Permanence
{
    public partial class permanencestandard : System.Web.UI.Page
    {
               public static DataTable dt = new DataTable();
        public static string reqintial;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                DropDownList1.Items.Add("EAU");
                DropDownList1.Items.Add("ELECTRICITE");
                DropDownList1.Items.Add("ASSAINISSEMENT");
               // bindGridView();


            }
        }

        

        //protected void lps()
        //{
        //    if (dt.Rows != null)
        //    {
        //        dt.Clear();
        //    }

        //    try
        //    {
        //        string cn2 = @"Data source=.\SQLEXPRESS;initial catalog=Permanence; integrated security=true";
        //        SqlConnection cnx2 = new SqlConnection(cn2);
        //        string query2 = "select p.idpermanence as  'PERMANENCE',a.dateag as 'DATE DEBUT' ,a.datefin as 'DATE FIN' ,a.semainechar as 'SEMAINE', n.nomniveau as 'LEVEL'  ,g.nomagent  as 'NOM',g.prenomagent as 'PRENOM',f.nomf as 'FONCTION',g.telagent as 'TELEPHONE' ,e.nomentity as 'ENTITY', p.idagent as 'AGENT','' as 'MODIFIER TACHE' from permanence p, agent g, agenda a, Entity e, fonction f ,niveau n where   n.idniveau=p.codeniveau and p.idagent = g.matricule and g.Ide = e.ident   and a.idagenda = p.idag and f.idf = g.idf";



        //        SqlCommand cmd2 = new SqlCommand(query2, cnx2);
        //        if (cnx2.State == System.Data.ConnectionState.Open)
        //        {
        //            cnx2.Close();
        //        }
        //        cnx2.Open();
        //        DataTable dt = new DataTable();
        //        dt.Load(cmd2.ExecuteReader());
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //        int s;
        //        for (s = 0; s < GridView1.Rows.Count; s++)
        //        {


        //            //GridView2.Rows[s].Cells[11].Text = @"<a href= '#'  > MODIFIER </ a >";

        //            GridView1.Rows[s].Cells[11].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > MODIFIER </ a >";
        //            //GridView2.Rows[s].Cells[12].Text = Response.Redirect("~/AjoutPermanenceAgent.aspx?mpa=" + Server.UrlEncode(GridView2.Rows[s].Cells[0].Text.ToString())));
        //            //string s;
        //            //   s = Response.Redirect("~/AjoutPermanenceAgent.aspx?mpa=" + Server.UrlEncode(GridView2.Rows[s].Cells[0].Text.ToString()));
        //            //Response.Redirect("~/Login.aspx?ReturnPath=" + Server.UrlEncode(Request.Url.ToString()));


        //        }
        //        cnx2.Close();
        //    }

        //    catch (Exception ex)
        //    {
        //        Label1.Text = ex.Message;
        //    }
        //}


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView();
        }
       
        




        protected void Button3_Click(object sender, EventArgs e)
        {
          
        }

       

    protected void recherche()
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
                reqintial = @"select p.idpermanence as  'CODE',chefdep_id as 'CHEF DEP',a.dateag as ' DEBUT' ,a.datefin as ' FIN' ,a.semainechar as 'SEMAINE', n.nomniveau as 'NIVEAU'  ,g.nomagent  as 'NOM',g.prenomagent as 'PRENOM',f.nomf as 'FONCTION',p.typepermanence as 'TYPE PERMANENCE' ,e.nomentity as 'ENTITY', p.idagent as 'AGENT',p.affectation as 'AFFECTER','' as 'MODIFIER TACHE' ,'' as 'IMPRIMER' from permanence p, agent g, agenda a, Entity e, fonction f ,niveau n where   n.idniveau=p.codeniveau and p.idagent = g.matricule and g.Ide = e.ident   and a.idagenda = p.idag and f.idf = g.idf and 1=1";

                if (CheckBox1.Checked)
                {
                    reqintial += " and g.matricule='" + int.Parse(TextBox1.Text) + "' ";
                }

                if (CheckBox3.Checked)
                {
                    reqintial += " and p.idag='" + int.Parse(TextBox3.Text) + "' ";
                }
                if (CheckBox2.Checked)
                {
                    reqintial +="and p.typepermanence='"+DropDownList1.SelectedValue.ToString()+ "'";
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

                if (CheckBox6.Checked)
                {


                    reqintial += " and a.dateag between '" + TextBox6.Text + "' and '" + TextBox7.Text + "'  ";

                }
                Global.cmd.CommandText = reqintial;
                dt.Load(Global.cmd.ExecuteReader());

                GridView1.DataSource = dt;
                GridView1.DataBind();
                int s;
                for (s = 0; s < GridView1.Rows.Count; s++)
                {


                  

                    GridView1.Rows[s].Cells[13].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > MODIFIER </ a >";
                    GridView1.Rows[s].Cells[14].Text = @"<a href= 'form1?report=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > IMPRIMER </ a >";


                }
                Global.cnx.Close();
            }

            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {

            recherche();
        }

      

        protected void redirectpu(object sender, EventArgs e)
        {

            Response.Redirect("~/Permanenceurgente.aspx");
        }

        protected void redirectrecherche(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";
        }


        private void bindGridView()
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            int s;
            for (s = 0; s < GridView1.Rows.Count; s++)
            {



                GridView1.Rows[s].Cells[13].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > MODIFIER </ a >";
                GridView1.Rows[s].Cells[14].Text = @"<a href= 'form1?report=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > IMPRIMER </ a >";

            }
        }
        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            dt.DefaultView.Sort = e.SortExpression;
            bindGridView();


        }

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.bindGridView();
        }

      

       

        protected void dft(object sender, EventArgs e)
        {

            Response.Redirect("~/default.aspx");
        
}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("imprimer");
        }
    }
    }
