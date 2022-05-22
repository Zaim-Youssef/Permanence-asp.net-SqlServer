using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
namespace Permanence
{
    public partial class imprimer : System.Web.UI.Page
    {
      public static  DataTable dt = new DataTable();
        public static string q;
        public static SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) { 
            //recherche();
            //if (rd.Read())
            //{
            //    GridView1.DataSource = rd;
            //    GridView1.DataBind();
            //    }
            //}
        }
        protected void recherche()
        {
            if (dt.Rows != null)
            {
                dt.Clear();
            }
            string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
                 q = "select * from VSD where 1=1 ";

                SqlConnection cnx = new SqlConnection(cn);
            if (cnx.State==System.Data.ConnectionState.Open) { cnx.Close(); }
            cnx.Open();
                if (CheckBox1.Checked)
                {
                    q += "and [typepermanence] = '" + TextBox1.Text + "'";
                }
            if (CheckBox2.Checked)
            {
                q += "and [nomentity] = '" + TextBox2.Text + "'";
            }

            SqlCommand cmd = new SqlCommand(q, cnx);
            
            rd = cmd.ExecuteReader();
                
            

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            recherche();
            ReportViewer1.Focus();
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Reportagent.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", rd));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            //    recherche();
            //    if (rd.Read()) { 
            //GridView1.DataSource = rd;
            //GridView1.DataBind();
            //    }
            Response.Redirect("smtp2.aspx");

        }
    }
}