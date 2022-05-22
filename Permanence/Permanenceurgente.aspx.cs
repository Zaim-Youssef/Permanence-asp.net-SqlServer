﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Permanence
{
    public partial class Permanenceurgente : System.Web.UI.Page
    {
     
        public static string reqintial;
        public static DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("EAU");
                DropDownList1.Items.Add("ELECTRICITE");
                DropDownList1.Items.Add("ASSAINISSEMENT");
                // bindGridView();
            }

        }
        protected void pu()
        {
            try
            {
                string req = "select  p.idpermanence as  'PERMANENCE',  au.datedebut as  ' DATE DEBUT',au.datefin as  ' DATE FIN' , n.nomniveau as 'LEVEL' ,p.idagent 'CODE AGENT',g.nomagent  as 'NOM',g.prenomagent as 'PRENOM', p.typepermanence as 'TYPE PERMANENCE',f.nomf as 'FONCTION' , e.nomentity as 'ENTITY',''as 'MODIFIER'  from  fonction f,agent g, permanence p , agendaurgent au  , niveau n ,Entity e where  f.idf = g.idf and g.matricule=p.idagent  and n.idniveau=p.codeniveau and  g.Ide = e.ident and p.idagendaurgence=au.idagendaurg and p.codeniveau between 2 and 3   and 1=1";
                Global.cmd.CommandText = req;
                Global.cnx.Open();
                dt.Load(Global.cmd.ExecuteReader());

                GridView1.DataSource = dt;
                GridView1.DataBind();
                int s;
                for (s = 0; s < GridView1.Rows.Count; s++)
                {


                    //GridView2.Rows[s].Cells[11].Text = @"<a href= '#'  > MODIFIER </ a >";

                    GridView1.Rows[s].Cells[10].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > MODIFIER </ a >";
                    //GridView2.Rows[s].Cells[12].Text = Response.Redirect("~/AjoutPermanenceAgent.aspx?mpa=" + Server.UrlEncode(GridView2.Rows[s].Cells[0].Text.ToString())));
                    //string s;
                    //   s = Response.Redirect("~/AjoutPermanenceAgent.aspx?mpa=" + Server.UrlEncode(GridView2.Rows[s].Cells[0].Text.ToString()));
                    //Response.Redirect("~/Login.aspx?ReturnPath=" + Server.UrlEncode(Request.Url.ToString()));


                }
                Global.cnx.Close();
            }

            catch (Exception ex)
            {
                Label4.Text = ex.Message;
            }
        }
        private void bindGridView()
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            int s;
            for (s = 0; s < GridView1.Rows.Count; s++)
            {


               

                GridView1.Rows[s].Cells[11].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > MODIFIER </ a >";
              


            }
        }
    
      

        protected void redirectrecherche(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";
            Response.Redirect("crystalurg.aspx");
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
                reqintial = @"select  p.idpermanence as  'PERMANENCE',  au.datedebut as  ' DATE DEBUT',au.datefin as  ' DATE FIN' , n.nomniveau as 'LEVEL' ,p.idagent 'CODE AGENT',g.nomagent  as 'NOM',g.prenomagent as 'PRENOM', p.typepermanence as 'TYPE PERMANENCE',f.nomf as 'FONCTION' , e.nomentity as 'ENTITY',p.affectation,''as 'MODIFIER'  from  fonction f,agent g, permanence p , agendaurgent au  , niveau n ,Entity e where  f.idf = g.idf and g.matricule=p.idagent  and n.idniveau=p.codeniveau and  g.Ide = e.ident and p.idagendaurgence=au.idagendaurg and p.codeniveau between 2 and 3   and 1=1";

                if (CheckBox1.Checked)
                {
                    reqintial += " and g.matricule='" + int.Parse(TextBox1.Text) + "' ";
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
                if (CheckBox2.Checked)
                {
                    reqintial += "and p.typepermanence='"+DropDownList1.SelectedItem.ToString()+"'";
                }

                if (CheckBox6.Checked)
                {


                    reqintial += " and au.datedebut = '" + DateTime.Parse(TextBox6.Text).ToString() + "'  ";

                }
                Global.cmd.CommandText = reqintial;
                dt.Load(Global.cmd.ExecuteReader());

                GridView1.DataSource = dt;
                GridView1.DataBind();
                int s;
                for (s = 0; s < GridView1.Rows.Count; s++)
                {


                    

                    GridView1.Rows[s].Cells[11].Text = @"<a href= 'AjoutPermanenceAgent?mpa=" + Server.UrlEncode(GridView1.Rows[s].Cells[0].Text) + "'  > MODIFIER </ a >";
                  


                }
                Global.cnx.Close();
            }

            catch (Exception ex)
            {
                Label4.Text = ex.Message;
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

        protected void pst1(object sender, EventArgs e)
        {
          
            Response.Redirect("~/permanencestandard.aspx");
        
    }

        protected void ag(object sender, EventArgs e)
        {
          
           
            Response.Redirect("~/Default.aspx");
        
    }
    }
}