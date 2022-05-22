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



           

            //if (this.PreviousPage != null)
            //{
            //    Server.Transfer("connexionpage.aspx");
            //}
            //else
            //{


            if (!IsPostBack)
                    {
                        try
                        {
                            DropDownList1.Items.Add("valider");
                            DropDownList1.Items.Add("non_valider");
                           
                        }


                        catch (Exception ex) { Label1.Text = ex.Message; }
                    }

                    if (idt11 != null)
                    {

                        Label2.Text = idt11 + "etape mod";
                        Button4.Visible = true;
                        Button5.Visible = false;

                //label avec valider
               


                        try
                        {

                            Global.cmd.CommandText = "   select p.idpermanence ,g.prenomagent+' '+g.nomagent as prenomnom , p.idag  ,e.nomentity from permanence p ,agent g , entity e  where    p.idagent=g.matricule   and   e.ident=g.Ide and  p.idpermanence='" + int.Parse(idt11) + "'";

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
            //}
        





        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {



                Global.cmd.CommandText = "update  permanence set nomtachep = '" + TextBox16.Text + "',description='" + TextBox8.Text + "' ,typetache='" + TextBox14.Text + "',validation='"+DropDownList1.SelectedItem.ToString()+"'  where idpermanence = '" + int.Parse(apa1) + "'";

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
            







        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            try
            {




                Global.cmd.CommandText = @"update permanence set nomtachep='" + TextBox16.Text + "' ,typetache='" + TextBox14.Text + "',description='" + TextBox8.Text + "' , validation='" + DropDownList1.SelectedItem.ToString() + "'      where idpermanence = '" + int.Parse(idt11) + "'";


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

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.ToString() == "valider")
            {
                Label13.Visible =true;
                Label14.Visible = true;
                Label15.Visible = true;

                TextBox16.Visible = true;
                TextBox14.Visible = true;
                TextBox8.Visible = true;

            }
            else
            {
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;

                TextBox16.Visible = false;
                TextBox16.Text = "";
                TextBox14.Visible = false;
                TextBox14.Text = "";
                TextBox8.Visible = false;
                TextBox8.Text = "";
            }
        }
    }
}

