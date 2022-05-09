using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication8
{
    public partial class ListeOuvragesCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string req = "select * from ouvrage";
            chercherOuvrages(req);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                       string req = "select * from ouvrage  where nomouvr like '%" + txtRecherche.Text + "%' or  nomed like '%" + txtRecherche.Text + "%'";
            chercherOuvrages(req);
        }

        private void chercherOuvrages(string req)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();

            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            string tbl = "<table class='table table-striped'><tr><th>ISBN</th><th>Titre</th><th>Année</th><th>Editeur</th></tr>";
            while (dr.Read())
            {
                tbl += "<tr><td>" + dr["numouvr"].ToString() + "</td><td><a href='ficheOuvrageCode.aspx?code=" + dr["numouvr"].ToString() + "'>" + dr["nomouvr"].ToString() + "</a></td><td>" + dr["anneeparu"].ToString() + "</td><td>" + dr["nomed"].ToString() + "</td></tr>\n";


            }
            tbl += "</table>";

            lstO.InnerHtml = tbl;

            dr.Close();
            dr = null;
            cmd = null;
            cn.Close();
            cn = null;



        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajouterOuvrage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajouterOuvrage.aspx");

        }
    }
}