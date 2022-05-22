using System;
using System.Data;
using System.Data.SqlClient;
namespace Permanence
{
    public partial class AjoutPermanenceAgent : System.Web.UI.Page
    {
        public static int idurg;
        public static int idperma ;
        public static string mpa1;
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (this.PreviousPage == null)
            //{
            //    Server.Transfer("connexionpage.aspx");
            //}
            //else
            //{
          
            try
                {

                    string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                    string queryv = @"select max(idagendaurg) from agendaurgent";
                    SqlConnection cnxv = new SqlConnection(cn);
                    SqlCommand cmd = new SqlCommand(queryv, cnxv);
                    SqlDataReader rdv;
                    cnxv.Open();
                    rdv = cmd.ExecuteReader();


                    if (rdv.Read())
                    {

                        Label8.Text = rdv.GetInt32(0).ToString();
                        idurg = (rdv.GetInt32(0) + 1);
                        lb2.Text = idurg.ToString();
                    }
                    cnxv.Close();
                    rdv.Close();
                }
                catch (Exception ex) { Label8.Text = ex.Message; }



                string apa1 = Request.QueryString["apa"];
                 mpa1 = Request.QueryString["mpa"];

                TextBox4.ReadOnly = true;
                TextBox7.Visible = false;
                TextBox8.Visible = false;



                if (DropDownList5.SelectedValue == "1")
                {
                    Label3.Visible = true;
                    DropDownList4.Visible = true;
                    TextBox6.Visible = true;

                    DropDownList1.Visible = true;

                    //division
                    Label7.Visible = true;
                    DropDownList2.Visible = true;

                    //urg
                    TextBox7.Visible = false;
                    TextBox8.Visible = false;
                }
                else if ((DropDownList5.SelectedValue == "2") || (DropDownList5.SelectedValue == "3"))
                {
                    TextBox7.Visible = true;
                    TextBox8.Visible = true;
                    // standard
                    DropDownList1.Visible = false;
                    Label5.Visible = false;
                    //semaine 
                    DropDownList4.Visible = false;
                    TextBox6.Visible = false;
                    //division
                    Label7.Visible = false;
                    DropDownList2.Visible = false;
                }



                try
                {

                    string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                    string queryperma = @"select max(idpermanence) from permanence";
                    SqlConnection cnxperma = new SqlConnection(cn);
                    SqlCommand cmdperma = new SqlCommand(queryperma, cnxperma);
                    SqlDataReader rdperma;
                    cnxperma.Open();
                    rdperma = cmdperma.ExecuteReader();


                    if (rdperma.Read())
                    {

                    idperma = rdperma.GetInt32(0) + 1;

                    TextBox4.Text = idperma.ToString();
                       

                    }
                    cnxperma.Close();
                    rdperma.Close();
                }
                catch (Exception ex) { Label8.Text = ex.Message; }




                if (mpa1 != null)
                {

                    Button4.Visible = true;
                    Button5.Visible = false;


                    try
                    {
                        string chaine = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True ";
                        SqlConnection cn2 = new SqlConnection(chaine);
                        string querympa = " select g.nomagent+' '+g.prenomagent as nomprenom,f.nomf,g.matricule,e.nomentity ,p.idpermanence,p.idag from fonction f,agent g ,permanence p,Entity e where f.idf=g.idf and e.ident=g.Ide  and p.idagent=g.matricule and p.idpermanence=@mpa1";

                        SqlCommand cmdmpa = new SqlCommand(querympa, cn2);
                        SqlDataReader rdmpa;
                        if (cn2.State == System.Data.ConnectionState.Open)
                        {
                            cn2.Close();
                        }
                        cn2.Open();
                        cmdmpa.Parameters.AddWithValue("@mpa1", mpa1);
                        rdmpa = cmdmpa.ExecuteReader();
                        while (rdmpa.Read())
                        {
                            TextBox3.Text = rdmpa.GetString(1).ToString();
                            TextBox2.Text = rdmpa.GetString(0).ToString();
                            TextBox1.Text = rdmpa.GetInt32(2).ToString();
                            TextBox4.Text = rdmpa.GetInt32(4).ToString();


                        }
                        cn2.Close();
                        rdmpa.Close();
                    }
                    catch (Exception ex)
                    {
                        Label8.Text = "REMPLISSAGE text box 3 condition id permanence dans la modification //" + ex.Message;
                    }


                }
                else
                {

                    Button4.Visible = false;
                    Button5.Visible = true;



                    try
                    {

                        string chaine = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True ";
                        SqlConnection cn1 = new SqlConnection(chaine);
                        string queryapa = " select g.nomagent+' '+g.prenomagent as nomprenom,f.nomf,g.matricule,e.nomentity from fonction f,agent g , Entity e where f.idf=g.idf and e.ident=g.Ide and g.matricule=@apa";

                        SqlCommand cmd = new SqlCommand(queryapa, cn1);
                        SqlDataReader rd;
                        if (cn1.State == System.Data.ConnectionState.Open)
                        {
                            cn1.Close();
                        }
                        cn1.Open();
                        cmd.Parameters.AddWithValue("@apa", apa1);
                        rd = cmd.ExecuteReader();
                        while (rd.Read())
                        {
                            TextBox3.Text = rd.GetString(1).ToString();
                            TextBox2.Text = rd.GetString(0).ToString();
                            TextBox1.Text = rd.GetInt32(2).ToString();


                        }
                        cn1.Close();
                        rd.Close();
                    }
                    catch (Exception ex)
                    {
                        Label8.Text = "REMPLISSAGE text box 3 dans la gent condition matricule " + ex.Message;
                    }
                    Label8.Text = "REMPLISSAGE text box 3 non effectuer de mod";
                }











                if (!IsPostBack)
                {
                // typepermanence
                DropDownList6.Items.Add("EAU");
                DropDownList6.Items.Add("ELECTRICITE");
                DropDownList6.Items.Add("ASSAINISSEMENT");


                //affectation
                DropDownList3.Items.Add("INGENIEUR");
                DropDownList3.Items.Add("CHEF");
                DropDownList3.Items.Add("OPERATEUR DE RESEAU MT/BT");
                DropDownList3.Items.Add("MESURE & PROTECTION");
                DropDownList3.Items.Add("SUIVI DES TRAVAUX GENIE CIVIL ET TERRASSEMENT");
                DropDownList3.Items.Add("EQUIPES INTERVENTIONS EP ET FS");
                DropDownList3.Items.Add("PREMIER OPERATEUR");
                DropDownList3.Items.Add("DEUXIEME OPERATEUR");

                // heure debut
                DropDownList7.Items.Add("08:30");
                DropDownList7.Items.Add("16:30");
                DropDownList7.Items.Add("00:00");

                // heure fin
                DropDownList8.Items.Add("16:30");
                DropDownList8.Items.Add("00:00");
                DropDownList8.Items.Add("08:30");

                // reseau
                DropDownList9.Items.Add("MT/BT");
                DropDownList9.Items.Add("E.P");
                try
                {
                        Global.cmd.CommandText = "select idniveau , nomniveau from niveau";
                        if (Global.cnx.State == System.Data.ConnectionState.Open)
                        {
                            Global.cnx.Close();
                        }
                        Global.cnx.Open();
                        DataTable dt1 = new DataTable();
                        dt1.Load(Global.cmd.ExecuteReader());
                        DropDownList5.DataSource = dt1;
                        DropDownList5.DataTextField = "nomniveau";
                        DropDownList5.DataValueField = "idniveau";
                        DropDownList5.DataBind();
                        Global.cnx.Close();
                    }
                    catch (Exception ex)
                    {
                        Label8.Text = ex.Message;
                    }

                    try
                    {
                        if (Global.cnx.State == System.Data.ConnectionState.Open)
                        {
                            Global.cnx.Close();
                        }
                        Global.cnx.Open();
                        Global.cmd.CommandText = @"select idagenda ,dateag from agenda";
                        DataTable dtad = new DataTable();
                        dtad.Load(Global.cmd.ExecuteReader());
                        DropDownList4.DataSource = dtad;
                        DropDownList4.DataTextField = "dateag";
                        DropDownList4.DataValueField = "idagenda";
                        DropDownList4.DataBind();
                        Global.cnx.Close();


                    }
                    catch (Exception ex)
                    {
                        Label8.Text = ex.Message;
                        Label8.Text = " dropdownlist agenda" + ex.Message;
                    }

                    try
                    {
                        if (Global.cnx.State == System.Data.ConnectionState.Open)
                        {
                            Global.cnx.Close();
                        }
                        Global.cnx.Open();
                        Global.cmd.CommandText = @"select idagenda ,semainechar from agenda";
                        DataTable dta = new DataTable();
                        dta.Load(Global.cmd.ExecuteReader());
                        DropDownList1.DataSource = dta;
                        DropDownList1.DataTextField = "semainechar";
                        DropDownList1.DataValueField = "idagenda";
                        DropDownList1.DataBind();
                        Global.cnx.Close();


                    }
                    catch (Exception ex)
                    {
                        Label8.Text = ex.Message;
                        Label8.Text = " dropdownlist agenda" + ex.Message;
                    }








                    //dropdown list entity
                    try
                    {
                        string cnd = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                        string qd = @"select ident, nomentity from Entity";
                        SqlConnection cnxd = new SqlConnection(cnd);
                        SqlCommand cmdd = new SqlCommand(qd, cnxd);

                        if (cnxd.State == System.Data.ConnectionState.Open)
                        {
                            cnxd.Close();

                        }

                        DataTable dtd = new DataTable();
                        cnxd.Open();
                        dtd.Load(cmdd.ExecuteReader());

                        DropDownList2.DataSource = dtd;
                        DropDownList2.DataValueField = "ident";
                        DropDownList2.DataTextField = "nomentity";
                        DropDownList2.DataBind();
                        cnxd.Close();

                    }


                    catch (Exception ex) { Label8.Text = " dropdownlist Entity" + ex.Message; }


                }




                //}
                //else
                // {

                //    Server.Transfer("connexionpage.aspx");
                //}
                //}

            }
       








        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                if (Global.cnx.State == System.Data.ConnectionState.Open)
                {
                    Global.cnx.Close();
                }
                Global.cnx.Open();
                if (DropDownList5.SelectedValue == "1")
                {

                    Global.cmd.CommandText = " insert into permanence(idpermanence,idagent,idag,codeniveau,typepermanence,affectation,heured,heuref,cvehicule,matriculevehicule,reseau) values('" + idperma + "','" + int.Parse(TextBox1.Text) + "','" + DropDownList1.SelectedValue + "','" + DropDownList5.SelectedValue.ToString() + "','" + DropDownList6.SelectedItem.ToString() + "','"+DropDownList3.SelectedValue.ToString()+"','"+DropDownList7.SelectedValue+"','"+DropDownList8.SelectedValue+ "','" + int.Parse(TextBox9.Text) + "','"+ TextBox5.Text + "','" + DropDownList9.SelectedValue + "')";
                    if (Global.cmd.ExecuteNonQuery() > 0)
                    {
                        Label8.Text = "insertion effectuer 0";
                    }
                    else
                    {
                        Label8.Text = "insertion  non effectuer 0";
                    }


                    try
                    {
                        if (Global.cnx.State == System.Data.ConnectionState.Open)
                        {
                            Global.cnx.Close();
                        }
                        Global.cnx.Open();

                        Global.cmd.CommandText = " update  agent set Ide  ='" + DropDownList2.SelectedValue + "' where  matricule ='" + int.Parse(TextBox1.Text) + "'";
                        if (Global.cmd.ExecuteNonQuery() > 0)
                        {
                            Label8.Text = "modifier effectuer";
                            Response.Redirect("permanencestandard.aspx");
                        }
                        else
                        {
                            Label8.Text = "insertion 2 div agent  non effectuer";
                        }
                        Global.cnx.Close();

                    }
                    catch (Exception ex)
                    {
                        Label8.Text = ex.Message + "insertion 2  div agent nonb effectuer ";
                    }


                }

                else if ((DropDownList5.SelectedValue == "2") || (DropDownList5.SelectedValue == "3"))
                {
                    Label8.Text = idurg.ToString();
                    Global.cmd.CommandText = "insert into agendaurgent(idagendaurg,datedebut,datefin) values('" + idurg + "','" + DateTime.Parse(TextBox7.Text) + "','" + DateTime.Parse(TextBox8.Text) + "')";
                    if (Global.cmd.ExecuteNonQuery() > 0)
                    {
                        Label8.Text = "insertion  agenda uregent effectuer 2";
                    }
                    else
                    {
                        Label8.Text = "insertion  agenda uregent non effectuer 2";
                    }

                    Global.cmd.CommandText = " insert into permanence(idpermanence,idagent,idagendaurgence,codeniveau,typepermanence,affectation,reseau,heured,heuref,cvehicule,matriculevehicule )values('" + idperma + "','" + int.Parse(TextBox1.Text) + "','" + idurg + "','" + DropDownList5.SelectedValue.ToString() + "','" + DropDownList6.SelectedItem.ToString() + "','"+DropDownList3.SelectedValue.ToString()+ "','" + DropDownList9.SelectedValue + "','" + DropDownList7.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + int.Parse(TextBox9.Text) + "','"+TextBox5.Text+ "')";
                    if (Global.cmd.ExecuteNonQuery() > 0)
                    {
                        Label8.Text = "insertion effectuer 1";
                        Response.Redirect("permanenceurgente.aspx");
                    }
                    else
                    {
                        Label8.Text = "insertion  non effectuer 1";
                    }

                }


                Global.cnx.Close();

            }
            catch (Exception ex)
            {
                Label8.Text = ex.Message;
            }


        }




        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (DropDownList5.SelectedValue == "1")
            {
                string chaineup = @"Data Source=.\sqlexpress;Initial Catalog=Permanence;Integrated Security=True";
                string queryup = "Update permanence set matriculevehicule='"+TextBox5.Text+"', cvehicule= '" + int.Parse(TextBox9.Text) + "', heuref ='" + DropDownList8.SelectedValue + "',heured='" + DropDownList7.SelectedValue + "',reseau = '" + DropDownList9.SelectedValue + "',codeniveau='" + (DropDownList5.SelectedValue.ToString()) + "',idagendaurgence=NULL,idag='" + int.Parse(DropDownList1.SelectedValue) + "',typepermanence ='"+DropDownList6.SelectedValue.ToString()+"' ,affectation='"+DropDownList3.SelectedValue.ToString()+"' where idpermanence='" + int.Parse(TextBox4.Text) + "'";
                SqlConnection cnu = new SqlConnection(chaineup);
                SqlCommand cmdu = new SqlCommand(queryup, cnu);
                if (cnu.State == System.Data.ConnectionState.Open)
                {
                    cnu.Close();
                }
                cnu.Open();
                if (cmdu.ExecuteNonQuery() > 0)
                {

                    Label8.Text = "modification efectuer";
                }
                else
                {
                    Label8.Text = "modification non efectuer";
                }
                try
                {
                    Global.cmd.CommandText = " update  agent set Ide  ='" + DropDownList2.SelectedValue + "' where  matricule ='" + int.Parse(TextBox1.Text) + "'";

                    Global.cnx.Open();
                    if (Global.cmd.ExecuteNonQuery() > 0)
                    {
                        Label8.Text = "mdofier effectuer";
                        Response.Redirect("permanencestandard.aspx");
                    }
                    else
                    {
                        Label8.Text = "modifier  non effectuer";
                    }
                    Global.cnx.Close();
                    cnu.Close();

                }
                catch (Exception ex)
                {
                    Label8.Text = ex.Message + "modifier";
                }
            }
            else if ((DropDownList5.SelectedValue == "2") || (DropDownList5.SelectedValue == "3"))
            {
                try
                {
                    Global.cmd.CommandText = "insert into agendaurgent(idagendaurg,datedebut,datefin) values('" + int.Parse(lb2.Text) + "','" + DateTime.Parse(TextBox7.Text) + "','" + DateTime.Parse(TextBox8.Text) + "')";
                    if (Global.cnx.State == System.Data.ConnectionState.Open)
                    {
                        Global.cnx.Close();

                    }
                    Global.cnx.Open();
                    if (Global.cmd.ExecuteNonQuery() > 0)
                    {
                        Label8.Text = "insertion update agenda uregent effectuer 1";
                    }
                    else
                    {
                        Label8.Text = "insertion  update agenda uregent non effectuer 1";
                    }
                    Global.cnx.Close();
                }
                catch (Exception ex)
                {
                    Label8.Text = ex.Message + "insertion  update agenda uregent effectuer 1";
                }

                //update
                try
                {
                    string chaines = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                    string qn = "update permanence  set matriculevehicule='"+TextBox5.Text+ "', cvehicule= '" +int.Parse(TextBox9.Text)+ "',heuref='" + DropDownList8.SelectedValue + "',heured='" + DropDownList7.SelectedValue + "',reseau = '" +DropDownList9.SelectedValue + "',codeniveau='" + DropDownList5.SelectedValue.ToString()+ "' ,validation=NULL,idag=NULL, idagendaurgence='" + int.Parse(lb2.Text) + "',typepermanence ='" + DropDownList6.SelectedItem.ToString() + "',affectation='"+DropDownList3.SelectedValue.ToString()+"' where idpermanence= '" + int.Parse(mpa1) + "'";
                    SqlConnection cnxs = new SqlConnection(chaines);
                    SqlCommand cmds = new SqlCommand(qn, cnxs);
                    cnxs.Open();
                    if (cmds.ExecuteNonQuery() > 0) { Label8.Text = ""; } else { Label8.Text = ""; } 
                    cnxs.Close();
                    Response.Redirect("permanenceurgente");
                }
                catch (Exception ex)
                {
                    Label8.Text = ex.Message;
                }

            }

        }




        protected void Button6_Click(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";

            Response.Redirect("Default.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (Global.cnx.State == System.Data.ConnectionState.Open)
                {
                    Global.cnx.Close();
                }
                Global.cnx.Open();
                Global.cmd.CommandText = @"select datefin ,idagenda from agenda where idagenda = '" + DropDownList4.SelectedValue.ToString() + "'";
                Global.rd = (Global.cmd.ExecuteReader());
                if (Global.rd.Read())
                {
                    TextBox6.Visible = true;
                    Label3.Visible = true;
                    TextBox6.Text = Global.rd.GetDateTime(0).ToString();
                    DropDownList1.SelectedValue = Global.rd.GetInt32(1).ToString();

                }

                Global.cnx.Close();
                Global.rd.Close();
            }
            catch (Exception ex)
            { Label8.Text = ex.Message + ""; }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            try
            {
                if (Global.cnx.State == System.Data.ConnectionState.Open)
                {
                    Global.cnx.Close();
                }
                Global.cnx.Open();
                Global.cmd.CommandText = @"select datefin , idagenda from agenda where idagenda = '" + DropDownList1.SelectedValue.ToString() + "'";
                Global.rd = (Global.cmd.ExecuteReader());
                if (Global.rd.Read())
                {
                    TextBox6.Visible = true;
                    Label3.Visible = true;
                    TextBox6.Text = Global.rd.GetDateTime(0).ToString();
                    DropDownList4.SelectedValue = Global.rd.GetInt32(1).ToString();
                }

                Global.cnx.Close();
                Global.rd.Close();
            }
            catch (Exception ex)
            { Label8.Text = ex.Message + ""; }
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList5.SelectedValue == "1")
            {
                Label3.Visible = true;
                DropDownList4.Visible = true;
                TextBox6.Visible = true;

                DropDownList1.Visible = true;

                //division
                Label7.Visible = true;
                DropDownList2.Visible = true;

                //urg
                TextBox7.Visible = false;
                TextBox8.Visible = false;
            }
            else if ((DropDownList5.SelectedValue == "2") || (DropDownList5.SelectedValue == "3"))
            {
                TextBox7.Visible = true;
                TextBox8.Visible = true;
                // standard
                DropDownList1.Visible = false;
                Label5.Visible = false;
                //semaine 
                DropDownList4.Visible = false;
                TextBox6.Visible = false;
                //division
                Label7.Visible = false;
                DropDownList2.Visible = false;




            }
        }
    }
}