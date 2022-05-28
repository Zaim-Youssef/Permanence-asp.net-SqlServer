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
    public partial class inscription : System.Web.UI.Page
    {
        public static int idagent;
        protected void Page_Load(object sender, EventArgs e)
        {

            string chaine0 = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True ";
            SqlConnection cn20 = new SqlConnection(chaine0);
            string querympa0 = " select  max(matricule) from agent";
            SqlCommand cmdmpa0 = new SqlCommand(querympa0, cn20);

            if (cn20.State == System.Data.ConnectionState.Open)
            {
                cn20.Close();
            }
            cn20.Open();
            SqlDataReader rd;
            rd = cmdmpa0.ExecuteReader();
            if (rd.Read()) {
                idagent = rd.GetInt32(0)+1;
                //Label8.Text = idagent.ToString();
                    }
            cn20.Close();
            if (!IsPostBack)
            {
                try
                {
                    string chaine = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True ";
                    SqlConnection cn2 = new SqlConnection(chaine);
                    string querympa = " select  * from fonction";

                    SqlCommand cmdmpa = new SqlCommand(querympa, cn2);
                   
                    if (cn2.State == System.Data.ConnectionState.Open)
                    {
                        cn2.Close();
                    }
                    cn2.Open();
                    DataTable dt0 = new DataTable();
                    dt0.Load(cmdmpa.ExecuteReader());
                    
                        DropDownList1.DataSource = dt0;
                        DropDownList1.DataTextField = "nomf";
                        DropDownList1.DataValueField = "idf";
                        DropDownList1.DataBind();



                    
                    cn2.Close();
                    
                }
                catch (Exception ex)
                {
                    Label8.Text = "REMPLISSAGE dropdownlist" + ex.Message;
                }

                try
                {
                    string chaine = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True ";
                    SqlConnection cn2 = new SqlConnection(chaine);
                    string querympa = " select  * from Entity";

                    SqlCommand cmdmpa = new SqlCommand(querympa, cn2);
                    
                    if (cn2.State == System.Data.ConnectionState.Open)
                    {
                        cn2.Close();
                    }
                    cn2.Open();

                    DataTable dt1 = new DataTable();
                    dt1.Load(cmdmpa.ExecuteReader());
                    DropDownList2.DataSource = dt1;
                        DropDownList2.DataTextField = "nomentity";
                        DropDownList2.DataValueField = "ident";
                        DropDownList2.DataBind();



                    
                    cn2.Close();
                    
                }
                catch (Exception ex)
                {
                    Label8.Text = "REMPLISSAGE dropdownlist" + ex.Message;
                }
                try
                {
                    string chaine = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True ";
                    SqlConnection cn2 = new SqlConnection(chaine);
                    string querympa = "SELECT  e1.matricule as 'id' , e1.nomagent+'_'+e1.prenomagent as 'nomprenom' FROM agent e1 , agent e2 where  e1.matricule=e2.matricule and e1.matricule in (select e2.chefdep_id from agent e2 where e2.chefdep_id=e1.matricule)";

                    SqlCommand cmdmpa = new SqlCommand(querympa, cn2);
                    
                    if (cn2.State == System.Data.ConnectionState.Open)
                    {
                        cn2.Close();
                    }
                    cn2.Open();

                    DataTable dt2 = new DataTable();
                    dt2.Load(cmdmpa.ExecuteReader());

                    DropDownList3.DataSource = dt2;
                        DropDownList3.DataTextField = "nomprenom";
                        DropDownList3.DataValueField = "id";
                        DropDownList3.DataBind();



                    
                    cn2.Close();
                    
                }
                catch (Exception ex)
                {
                    Label8.Text = "REMPLISSAGE dropdownlist" + ex.Message;
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try { 
            if (Global.cnx.State == System.Data.ConnectionState.Open)
            {
                Global.cnx.Close();
            }
            Global.cnx.Open();
            Global.cmd.CommandText = " insert into agent  (matricule,[chefdep_id],[idf],[Ide],[nomagent],[prenomagent],[adresse],[email],[pw],[etat]) values('"+idagent+"','" + DropDownList3.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','11111','agent')";
            if (Global.cmd.ExecuteNonQuery() > 0)
            {
                Label8.Text = "";
            }
            else
            {
               
            }
            }
            catch(Exception ex)
            {
                Label8.Text = ex.Message;
            }

            Response.Redirect("Default.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Global.globalvadmin = "admin";

            Response.Redirect("Default.aspx");
        }
    }
}