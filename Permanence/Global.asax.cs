using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
namespace Permanence
{
    public class Global : HttpApplication
    {
        public static string cn = @"Data Source=DESKTOP-IFPTOAR\SQLEXPRESS;Initial Catalog=Permanence;Integrated Security=True";
        public static SqlConnection cnx = new SqlConnection(cn);
        public static SqlCommand cmd = new SqlCommand("", cnx);
        public static SqlDataReader rd;
        public static DataTable dt = new DataTable();
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}