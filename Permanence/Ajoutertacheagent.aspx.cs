using System;
using System.Data;
using System.Data.SqlClient;
namespace Permanence
{
    public partial class Ajoutertacheagent : System.Web.UI.Page
    {
        public static string idt11;
        public static string apa1;
        protected void Page_Load(object sender, EventArgs e)
        {


            apa1 = Request.QueryString["ajt"];
            idt11 = Request.QueryString["idt"];


            if (!IsPostBack)
            {
                try
                {
                    DropDownList1.Items.Add("valider");
                    DropDownList1.Items.Add("non_valider");
                    Global.cmd.CommandText = @"select * from tache";
                    
                    DataTable dt = new DataTable();
                    if (Global.cnx.State == System.Data.ConnectionState.Open) { Global.cnx.Close(); }
                    Global.cnx.Open();
                    dt.Load(Global.cmd.ExecuteReader());

                    DropDownList2.DataSource = dt;
                    DropDownList2.DataTextField = "nomtache";
                    DropDownList2.DataValueField = "idtache";
                    DropDownList2.DataBind();
                    Global.cnx.Close();

                    if (Global.cnx.State == System.Data.ConnectionState.Open) { Global.cnx.Close(); }
                    Global.cnx.Open();
                    Global.cmd.CommandText = "select idj ,nomjour from jour";

                    DataTable dt1 = new DataTable();
                    dt1.Load(Global.cmd.ExecuteReader());
                    DropDownList4.DataSource = dt1;
                    DropDownList4.DataTextField = "nomjour";
                    DropDownList4.DataValueField = "idj";
                    DropDownList4.DataBind();
                    Global.cnx.Close();
                }


                catch (Exception ex) { Label1.Text = ex.Message; }
            }

            if (idt11 != null)
            {

                Label2.Text = idt11 + "etape mod";
                Button4.Visible = true;
                Button5.Visible = false;




                try
                {

                    Global.cmd.CommandText = "   select p.idpermanence ,g.prenomagent+' '+g.nomagent as prenomnom , p.idag  ,e.nomentity  from permanence p ,agent g , entity e  where    p.idagent=g.matricule   and   e.ident=g.Ide and  p.idpermanence='" + int.Parse(idt11) + "'";

                    if (Global.cnx.State == System.Data.ConnectionState.Open)
                    {
                        Global.cnx.Close();
                    }
                    Global.cnx.Open();

                    Global.rd = Global.cmd.ExecuteReader();
                    if (Global.rd.Read())
                    {
                        TextBox1.Text = Global.rd.GetInt32(0).ToString();
                        TextBox15.Text = Global.rd.GetString(1).ToString();
                        TextBox10.Text = Global.rd.GetString(3).ToString();
                        TextBox9.Text = Global.rd.GetInt32(2).ToString();




                    }
                    Global.cnx.Close();
                    Global.rd.Close();

                }
                catch (Exception ex)
                {
                    Label2.Text = ex.Message + "remplissage text box modifier";
                }
            }





            if (apa1 != null)
            {
                Label2.Text = apa1;
                Button4.Visible = false;
                Button5.Visible = true;



                try
                {

                    Global.cmd.CommandText = "   select p.idpermanence ,g.prenomagent+' '+g.nomagent as prenomnom , p.idag  ,e.nomentity  from permanence p ,agent g , entity e  where    p.idagent=g.matricule   and   e.ident=g.Ide and  p.idpermanence='" + int.Parse(apa1) + "'";

                    if (Global.cnx.State == System.Data.ConnectionState.Open)
                    {
                        Global.cnx.Close();
                    }
                    Global.cnx.Open();

                    Global.rd = Global.cmd.ExecuteReader();
                    if (Global.rd.Read())
                    {
                        TextBox1.Text = Global.rd.GetInt32(0).ToString();
                        TextBox15.Text = Global.rd.GetString(1).ToString();
                        TextBox10.Text = Global.rd.GetString(3).ToString();
                        TextBox9.Text = Global.rd.GetInt32(2).ToString();




                    }
                    Global.cnx.Close();
                    Global.rd.Close();

                }
                catch (Exception ex)
                {
                    Label1.Text = "REMPLISSAGE text box 3 tajout" + ex.Message;
                }
                Label1.Text = "REMPLISSAGE text box 3  effectuer de ajout";


            }

















        }




        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {



                Global.cmd.CommandText = "insert into permanencetache(tachej,permanencej,description,typetache)  values('" + int.Parse(DropDownList2.SelectedValue) + "','" + int.Parse(apa1) + "','" + TextBox8.Text + "','" + TextBox14.Text + "')";

                if (Global.cnx.State == System.Data.ConnectionState.Open)
                    Global.cnx.Close();
                Global.cnx.Open();
                if (Global.cmd.ExecuteNonQuery() > 0)
                {
                    Label5.Text = "insertion executer";
                }

                else
                {
                    Label5.Text = "insertion non executer";
                }
                Global.cnx.Close();
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
            try
            {




                Global.cmd.CommandText = @"update permanence  set validation='" + DropDownList1.SelectedItem.ToString() + "',idjour='" + DropDownList4.SelectedValue + "' where idpermanence = '" + int.Parse(apa1) + "' ";

                if (Global.cnx.State == System.Data.ConnectionState.Open)
                    Global.cnx.Close();
                Global.cnx.Open();
                if (Global.cmd.ExecuteNonQuery() > 0)
                {
                    Label5.Text = "insertion 2executer";
                    Response.Redirect("atpa.aspx");
                }

                else
                {
                    Label5.Text = "insertion 2 non executer";
                }
                Global.cnx.Close();
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            try
            {




                Global.cmd.CommandText = @"update permanencetache set tachej='" + DropDownList2.SelectedValue.ToString() + "' ,typetache='" + TextBox14.Text + "',description='" + TextBox8.Text + "' where    permanencej='" + int.Parse(idt11) + "'";


                if (Global.cnx.State == System.Data.ConnectionState.Open)
                    Global.cnx.Close();
                Global.cnx.Open();
                if (Global.cmd.ExecuteNonQuery() > 0)
                {
                    Label2.Text = "mod executer";
                }

                else
                {
                    Label2.Text = "mod non executer";
                }
                Global.cnx.Close();
            }

            catch (Exception ex)
            {
                Label2.Text = "mod1" + ex.Message;
            }
            try
            {




                Global.cmd.CommandText = @"update permanence  set validation='" + DropDownList1.SelectedItem.ToString() + "' ,idjour='" + DropDownList4.SelectedValue + "' where idpermanence = '" + int.Parse(idt11) + "' ";

                if (Global.cnx.State == System.Data.ConnectionState.Open)
                    Global.cnx.Close();
                Global.cnx.Open();
                if (Global.cmd.ExecuteNonQuery() > 0)
                {
                    Label5.Text = "mod 2executer";

                }

                else
                {
                    Label5.Text = "md 2 non executer";
                }
                Global.cnx.Close();
            }
            catch (Exception ex)
            {
                Label2.Text = "mod2" + ex.Message;
            }

            if (DropDownList1.SelectedItem.Text == "non_valider")
            {

                try
                {




                    Global.cmd.CommandText = @"delete from permanencetache     where tachej='" + DropDownList2.SelectedValue.ToString() + "'  and permanencej = '" + int.Parse(idt11) + "' ";

                    if (Global.cnx.State == System.Data.ConnectionState.Open)
                        Global.cnx.Close();
                    Global.cnx.Open();
                    if (Global.cmd.ExecuteNonQuery() > 0)
                    {
                        Label5.Text = "supr 3 executer";
                        Response.Redirect("atpa.aspx");
                    }

                    else
                    {
                        Label5.Text = "supr 3 non executer";
                    }
                    Global.cnx.Close();
                }
                catch (Exception ex)
                {
                    Label2.Text = "supr 3" + ex.Message;
                }
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("atpa.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

