using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication8
{
    public partial class AjouterOuvrage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrNum.Visible = false;
        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();


            string req = "select * from ouvrage where numouvr = " + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            bool flag = false;
            if (dr.Read())
                flag = true;
            dr.Close();
            dr = null;
            if (flag)
            {
             
                cmd = null;
                cn.Close();
                cn = null;
       
                lblErrNum.Visible = true;
            }
            else
            {
                 req = "insert into ouvrage values (@numouvr, @nomouvr, @annee, @numrub, @nomed )";


                cmd.CommandText = req;
                cmd.Parameters.AddWithValue("@numouvr", Convert.ToInt32(TextBox1.Text));
                cmd.Parameters.AddWithValue("@nomouvr", TextBox2.Text);
                cmd.Parameters.AddWithValue("@annee", Convert.ToInt32(TextBox3.Text));
                cmd.Parameters.AddWithValue("@numrub", Convert.ToInt32(TextBox4.Text));
                cmd.Parameters.AddWithValue("@nomed", TextBox5.Text);

                cmd.ExecuteNonQuery();


                cmd = null;
                cn.Close();
                cn = null;

                //  Response.Redirect("ficheOuvrageCode.aspx?code=" + TextBox1.Text);
                shadowBox1.Style["display"] = "block";

            }


        }

        protected void btnAnnuler_Click(object sender, EventArgs e)
        {
            Response.Redirect("listeOuvragesCode.aspx");


        }
    }
}