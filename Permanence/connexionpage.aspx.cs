using System;
using System.Data;
using System.Data.SqlClient;

namespace Permanence
{
    public partial class connexionpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RadioButton1.Visible = false;
            //RadioButton2.Visible = false;
            button1.Visible = false;
            button2.Visible = false;
            


        }

       

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
              




                /////
                // string qa2 = @"select email ,pw , matricule from agent where  email ='" + txtlogin.Text + "'  and pw = '" + txtpw.Text + "' ";

                /////////
                string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                string qa = "select email , pw, etat , matricule from agent where email = '" + txtlogin.Text + "'  and  pw= '" + txtpw.Text + "'  ";
                SqlConnection cnx = new SqlConnection(cn);
                SqlCommand cmd = new SqlCommand(qa, cnx);
                if (cnx.State == System.Data.ConnectionState.Open) { cnx.Close(); }
                cnx.Open();
                SqlDataReader rd1;
                rd1 = cmd.ExecuteReader();
                if (rd1.Read())
                {
                    if (rd1.GetString(2).ToString() == "admin")
                    {
                       
                        Label2.Text = "Veuillez choisir la page pour acceder";
                        //RadioButton1.Visible = true;
                        //RadioButton2.Visible = true;
                        btnlogin1.Visible = false;
                        button1.Visible=true;
                        button2.Visible = true;
                        Session["agent"] = rd1.GetInt32(3).ToString();
                        //if (RadioButton2.Checked)
                        //{

                        //    Session["agent"] = rd1.GetInt32(3).ToString();

                        //   
                        //    Server.Transfer("~/atpa.aspx");

                        //}
                        //else if (RadioButton1.Checked)
                        //{
                        //    Global.globalvadmin = "admin";
                        //    Session["agent"] = rd1.GetInt32(3).ToString();
                        //    Server.Transfer("~/Default.aspx");


                        //}
                    }
                    else if (rd1.GetString(2).ToString() == "agent")
                    {


                        button1.Visible = false;
                        button2.Visible = false;
                        Session["agent"] = rd1.GetInt32(3).ToString();
                        Global.globalvagent = "agent";
                        Server.Transfer("~/atpa.aspx");
                    }
                }
                else
                {
                    Label4.Text = "veuillez saisin un mot de passe valide incorrect";
                  


                   



                }
                rd1.Close();
                cnx.Close();
            }

            catch (Exception ex)
            {
                Label1.Text = "" + ex.Message;
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";

           
            Server.Transfer("~/Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Global.globalvagent = "agent";
           
            Server.Transfer("~/atpa.aspx");
        }
    }
}