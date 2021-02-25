using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class admyorumdetay : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorum_id"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select yorum_adi,yorum_mail,yorum_icerik,yemek_adi from tb_yorumlar inner join tb_yemekler on tb_yorumlar.yemek_id= tb_yemekler.yemek_id where yorum_id=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();

                }
                bgl.Baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tb_yorumlar set yorum_icerik=@p1,yorum_onay=@p2 where yorum_id=@p3", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", "true");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}