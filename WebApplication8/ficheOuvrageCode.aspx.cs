using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication8
{
    public partial class ficheOuvrageCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            string req = "select * from ouvrage o  inner join classification c on o.numrub=c.numrub  where o.numouvr = " + Request.QueryString["code"];
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            string tbl = "<table class='table table-striped'>";
            while (dr.Read())
            {

                tbl += "<tr><th>ISBN</th><td>" + dr["numouvr"].ToString() + "</td></tr>" +
                    "<tr><th>Titre</th><td>" + dr["nomouvr"].ToString() + "</td></tr>" +
                    "<tr><th>Année</th><td>" + dr["anneeparu"].ToString() + "</td></tr>" +
                    "<tr><th>Editeur</th><td>" + dr["nomed"].ToString() + "</td></tr>\n"+
                "<tr><th>Classification</th><td>" + dr["librub"].ToString() + "</td></tr>\n";
            }
            tbl += "</table>";

            ficheO.InnerHtml = tbl;
            dr.Close();
            dr = null;
            cmd = null;
            cn.Close();
            cn = null;
        }
    }
}