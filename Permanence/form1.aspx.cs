using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
using System.Configuration;
using System.Web;
using System.Collections.Generic;


namespace Permanence
{
    public partial class form1 : System.Web.UI.Page
    {
        public static string rp;
        protected void Page_Load(object sender, EventArgs e)
        {
            rp = Request.QueryString["report"];

            //string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
            //string q = "select affectation,nomagent,prenomagent,semainechar,[dateag],[datefin],nomentity,,idagent,[idpermanence] from VS";
            //SqlConnection cnx = new SqlConnection(cn);
            //SqlDataAdapter da = new SqlDataAdapter(q, cnx);

            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            imprimer();
        }
        protected void imprimer()
        {
            if (!IsPostBack) { 
            string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
            string q = "select * from VSD where idpermanence='" + int.Parse(rp) + "' ";
           
            SqlConnection cnx = new SqlConnection(cn);
            SqlDataAdapter da = new SqlDataAdapter(q, cnx);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report2.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1",dt1));
            ReportViewer1.LocalReport.Refresh();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}