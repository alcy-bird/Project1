using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemek_id"];

            SqlCommand komut = new SqlCommand("select yemek_adi from tb_yemekler where yemek_id=@p1",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                Label3.Text = dr[0].ToString();

            }
            bgl.Baglanti().Close();

            //yorumları listeleme
            SqlCommand komut2 = new SqlCommand("select * from tb_yorumlar where yemek_id=@p2", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into tb_yorumlar(yorum_adi,yorum_mail,yorum_icerik,yemek_id) values (@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.Baglanti().Close();

        }
    }
}