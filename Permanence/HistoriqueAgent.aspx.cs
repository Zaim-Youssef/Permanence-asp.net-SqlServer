using System;
using System.Data;

namespace Permanence
{
    public partial class HistoriqueAgent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Page.PreviousPage != null)
            //{
                try
            {
                string cm1 = Request.QueryString["cm"];
                Console.WriteLine(cm1);
               
                if (cm1 != null)

                {
                    if (Global.cnx.State == System.Data.ConnectionState.Open) { Global.cnx.Close(); }
                    Global.cnx.Open();
                    Global.cmd.CommandText = "SELECT * FROM VHISTORIQUE  WHERE VHISTORIQUE.ID= '" + int.Parse(cm1) + "' ";


                    DataTable dtha = new DataTable();
                    dtha.Load(Global.cmd.ExecuteReader());
                    GridView1.DataSource = dtha;
                    GridView1.DataBind();
                    Global.cnx.Close();
                }
                else
                {


                    Label1.Text = "query string invalide";
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }


        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Global.globalvadmin = "admin";

            Server.Transfer("~/Default.aspx");
        }
        //else
        //{
        //    Server.Transfer("connexionpage.aspx");
        //}
        //}
    }
}