using System;
using System.Data;
using System.Data.SqlClient;
namespace Permanence
{
    public partial class AjoutPermanenceAgent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string apa1 = Request.QueryString["apa"];
            string mpa1 = Request.QueryString["mpa"];
            TextBox6.Visible = false;
            Label3.Visible = false;
            DropDownList4.Visible = false;
            TextBox6.Visible=false;
            Label5.Visible = false;
            DropDownList1.Visible = false;





            if (mpa1 != null)
            {
                Label2.Text = mpa1;
                Button4.Visible = true;
                Button5.Visible = false;
                TextBox4.ReadOnly = true;

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
                    Label1.Text = "REMPLISSAGE text box 3 condition id permanence dans la modification //" + ex.Message;
                }


            }
            else
            {
                Label2.Text = apa1;
                Button4.Visible = false;
                Button5.Visible = true;
                TextBox4.ReadOnly = false;


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
                    Label1.Text = "REMPLISSAGE text box 3 dans la gent condition matricule " + ex.Message;
                }
                Label1.Text = "REMPLISSAGE text box 3 non effectuer de mod";
            }











            if (!IsPostBack)
            {


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
                    Label2.Text = ex.Message;
                    Label1.Text = " dropdownlist agenda" + ex.Message;
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
                    Label2.Text = ex.Message;
                    Label1.Text = " dropdownlist agenda" + ex.Message;
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


                catch (Exception ex) { Label1.Text = " dropdownlist Entity" + ex.Message; }


            }
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
                Global.cmd.CommandText = " insert into permanence(idpermanence,idagent,idag) values('" + int.Parse(TextBox4.Text) + "','" + int.Parse(TextBox1.Text) + "','" + DropDownList1.SelectedValue + "')";




                if (Global.cmd.ExecuteNonQuery() > 0)
                {
                    Label1.Text = "insertion effectuer";
                }
                else
                {
                    Label1.Text = "insertion  non effectuer";
                }
                Global.cnx.Close();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
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
                    Label1.Text = "modifier effectuer";
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label1.Text = "insertion 2  non effectuer";
                }
                Global.cnx.Close();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message + "insertion 2  nonb effectuer ";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string chaineup = @"Data Source=.\sqlexpress;Initial Catalog=Permanence;Integrated Security=True";
            string queryup = "Update permanence set idagent='" + int.Parse(TextBox1.Text) + "',idag='" + int.Parse(DropDownList1.SelectedValue) + "' where idpermanence='" + int.Parse(TextBox4.Text) + "'";
            SqlConnection cnu = new SqlConnection(chaineup);



            SqlCommand cmdu = new SqlCommand(queryup, cnu);
            if (cnu.State == System.Data.ConnectionState.Open)
            {
                cnu.Close();
            }
            cnu.Open();
            if (cmdu.ExecuteNonQuery() > 0)
            {

                Label1.Text = "modification efectuer";
            }
            else
            {
                Label1.Text = "modification non efectuer";
            }


            try
            {
                Global.cmd.CommandText = " update  agent set Ide  ='" + DropDownList2.SelectedValue + "' where  matricule ='" + int.Parse(TextBox1.Text) + "'";





                Global.cnx.Open();
                if (Global.cmd.ExecuteNonQuery() > 0)
                {
                    Label1.Text = "mdofier effectuer";
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label1.Text = "modifier  non effectuer";
                }
                Global.cnx.Close();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message + "modifier";
            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
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
            { Label2.Text = ex.Message + ""; }
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
            { Label2.Text = ex.Message + ""; }
        }
    }
}