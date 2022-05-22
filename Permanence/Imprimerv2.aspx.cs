using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
using System.Globalization;
namespace Permanence
{
    public partial class Imprimerv2 : System.Web.UI.Page
    {
        public static DataTable dt = new DataTable();
        public static string q;
        public static SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            afficher();
            }
        }
        protected void afficher(){
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
                DropDownList1.DataSource = dtad;
                DropDownList1.DataTextField = "dateag";
                DropDownList1.DataValueField = "idagenda";
                DropDownList1.DataBind();
                Global.cnx.Close();


            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
                Label4.Text = " dropdownlist agenda" + ex.Message;
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
                DropDownList2.DataSource = dta;
                DropDownList2.DataTextField = "semainechar";
                DropDownList2.DataValueField = "idagenda";
                DropDownList2.DataBind();
                Global.cnx.Close();


            }
            catch (Exception ex)
            {
              
                Label4.Text = " dropdownlist agenda" + ex.Message;
            }

            try
            {
                if (Global.cnx.State == System.Data.ConnectionState.Open)
                {
                    Global.cnx.Close();
                }
                Global.cnx.Open();
                Global.cmd.CommandText = @"select idagenda ,datefin from agenda";
                DataTable dta = new DataTable();
                dta.Load(Global.cmd.ExecuteReader());
                DropDownList3.DataSource = dta;
                DropDownList3.DataTextField = "datefin";
                DropDownList3.DataValueField = "idagenda";
                DropDownList3.DataBind();
                Global.cnx.Close();


            }
            catch (Exception ex)
            {
               
                Label4.Text = " dropdownlist agenda" + ex.Message;
            }
            //try {
            //    if (Global.cnx.State == System.Data.ConnectionState.Open)
            //    {
            //        Global.cnx.Close();
            //    }
            //    Global.cnx.Open();
            //    Global.cmd.CommandText = "select idniveau,nomniveau from niveau";
               
               
            //    DataTable dt1 = new DataTable();
            //    dt1.Load(Global.cmd.ExecuteReader());
            //    DropDownList4.DataSource = dt1;
            //    DropDownList4.DataValueField = "idniveau";
            //    DropDownList4.DataTextField = "nomniveau";
            //    DropDownList4.DataBind();
            //    Global.cnx.Close();
            //} catch(Exception ex) { Label4.Text = ex.Message; }

           
        }




        protected void recherche()
        {
            if (dt.Rows != null)
            {
                dt.Clear();
            }
            string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
            q = "select * from VSHV1 where 1=1 ";

            SqlConnection cnx = new SqlConnection(cn);
            if (cnx.State == System.Data.ConnectionState.Open) { cnx.Close(); }
            cnx.Open();
            if (CheckBox1.Checked)
            {
                q += "and [typepermanence] = '" + TextBox1.Text + "'";
            }
            if (CheckBox2.Checked)
            {
                q += "and [nomentity] = '" + TextBox2.Text + "'";
            }
            if (CheckBox3.Checked)
            {
                q += "and dateag between '"+DropDownList1.SelectedItem.ToString() + "' and '"+DropDownList3.SelectedItem.ToString()+"'  ";
            }
            if (CheckBox4.Checked)
            {
                q += "and heured = '" + TextBox3.Text + "'";
            }
           
                SqlCommand cmd = new SqlCommand(q, cnx);

            rd = cmd.ExecuteReader();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            recherche();
            ReportViewer1.Focus();
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", rd));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("smtp2.aspx");
        }
      

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    if (Global.cnx.State == System.Data.ConnectionState.Open)
            //    {
            //        Global.cnx.Close();
            //    }
            //    Global.cnx.Open();
            //    Global.cmd.CommandText = @"select datefin ,idagenda from agenda where idagenda = '" + DropDownList1.SelectedValue.ToString() + "'";
            //    Global.rd = (Global.cmd.ExecuteReader());
            //    if (Global.rd.Read())
            //    {
                    
            //        DropDownList2.SelectedValue = Global.rd.GetInt32(1).ToString();
            //        DropDownList3.SelectedValue = Global.rd.GetInt32(1).ToString();
            //    }

            //    Global.cnx.Close();
            //    Global.rd.Close();
            //}
            //catch (Exception ex)
            //{ Label4.Text = ex.Message + ""; }
            DropDownList2.SelectedValue = DropDownList1.SelectedValue.ToString();
            DropDownList3.SelectedValue = DropDownList1.SelectedValue.ToString();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    if (Global.cnx.State == System.Data.ConnectionState.Open)
            //    {
            //        Global.cnx.Close();
            //    }
            //    Global.cnx.Open();
            //    Global.cmd.CommandText = @"select datefin , idagenda from agenda where idagenda = '" + DropDownList3.SelectedValue.ToString() + "'";
            //    Global.rd = (Global.cmd.ExecuteReader());
            //    if (Global.rd.Read())
            //    {


            //        DropDownList1.SelectedValue = Global.rd.GetInt32(1).ToString();
            //        DropDownList2.SelectedValue = Global.rd.GetInt32(1).ToString();
            //    }

            //    Global.cnx.Close();
            //    Global.rd.Close();
            //}
            //catch (Exception ex)
            //{ Label4.Text = ex.Message + ""; }

            DropDownList1.SelectedValue = DropDownList3.SelectedValue.ToString();
            DropDownList2.SelectedValue = DropDownList3.SelectedValue.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    if (Global.cnx.State == System.Data.ConnectionState.Open)
            //    {
            //        Global.cnx.Close();
            //    }
            //    Global.cnx.Open();
            //    Global.cmd.CommandText = @"select  idagenda from agenda where idagenda = '" + DropDownList2.SelectedValue.ToString() + "'";
            //    Global.rd = (Global.cmd.ExecuteReader());
            //    if (Global.rd.Read())
            //    {


            //        DropDownList1.SelectedValue = Global.rd.GetInt32(1).ToString();
            //        DropDownList3.SelectedValue = Global.rd.GetInt32(1).ToString();
            //    }

            //    Global.cnx.Close();
            //    Global.rd.Close();
            //}
            //catch (Exception ex)
            //{ Label4.Text = ex.Message + ""; }
            DropDownList1.SelectedValue = DropDownList2.SelectedValue.ToString();
            DropDownList3.SelectedValue = DropDownList2.SelectedValue.ToString();
        }

       
    }
}