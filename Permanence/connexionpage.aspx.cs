using System;
using System.Data.SqlClient;

namespace Permanence
{
    public partial class connexionpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            try
            {



                Global.cmd.CommandText = " SELECT  e1.matricule,e1.email , e1.pw FROM agent e1 , agent e2 where e1.email='" + txtlogin.Text + "' and e1.pw='" + txtpw.Text + "' and e1.matricule=e2.matricule and e1.matricule in (select e2.chefdep_id from agent e2 where e2.chefdep_id=e1.matricule )";



                if (Global.cnx.State == System.Data.ConnectionState.Open) { Global.cnx.Close(); }
                Global.cnx.Open();
                Global.rd = Global.cmd.ExecuteReader();


                if (Global.rd.Read())
                {
                    Label2.Text = "Veuillez choisir la page pour acceder";
                    RadioButton1.Visible = true;
                    RadioButton2.Visible = true;
                    if (RadioButton1.Checked)
                    {
                        Server.Transfer("~/default.aspx");
                    }
                    if (RadioButton2.Checked)
                    {
                        Session["agent"] = Global.rd.GetInt32(0).ToString();
                        Label1.Text = Global.rd.GetInt32(0).ToString();
                        Server.Transfer("~/atpa.aspx");
                    }
                }

                else
                {
                    Global.cmd.CommandText = " SELECT  e1.matricule ,e1.email , e1.pw FROM agent e1  where e1.email='" + txtlogin.Text + "' and e1.pw='" + txtpw.Text + "' ";

                    if (Global.cnx.State == System.Data.ConnectionState.Open) { Global.cnx.Close(); }
                    Global.cnx.Open();


                    SqlDataReader rd;
                    //DataTable dtha1 = new DataTable();
                    rd = Global.cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        Session["agent"] = rd.GetInt32(0).ToString();
                        Label1.Text = rd.GetInt32(0).ToString();
                        Server.Transfer("~/atpa.aspx");

                    }

                    else
                    {
                        Server.Transfer("~/connexionpage.aspx");
                    }
                }





                Global.cnx.Close();




            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}