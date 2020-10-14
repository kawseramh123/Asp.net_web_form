using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project.Report
{
    public partial class Reports : System.Web.UI.Page
    {

            protected void Page_Load(object sender, EventArgs e)
            {
               

                DataSet ds = getData();
               // ds.WriteXml(@"D:\1253222\ASP.NET\Practice\Project-7\Web_Project1\Web_Project\Report\Report.xsd", XmlWriteMode.WriteSchema);

                ReportDocument rd = new ReportDocument();
                rd.Load(Server.MapPath("~/Report/BookReport.rpt"));
                rd.SetDataSource(ds);
                CrystalReportViewer1.ReportSource = rd;
            }

            private DataSet getData()
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter())
                    {
                        string sql = @" select * from Book ";


                        da.SelectCommand = new SqlCommand(sql, conn);
                        da.SelectCommand.CommandType = CommandType.Text;



                       

                        DataSet ds = new DataSet();
                        da.Fill(ds, "BookInfo");



                        return ds;

                    }
                }
            }
        
    }
}