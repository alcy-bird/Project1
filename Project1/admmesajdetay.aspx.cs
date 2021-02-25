using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class admmesajdetay : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["mesaj_id"];
            SqlCommand komut = new SqlCommand("select * from tb_mesajlar where mesaj_id=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
            }
            bgl.Baglanti().Close();

        }
    }
}