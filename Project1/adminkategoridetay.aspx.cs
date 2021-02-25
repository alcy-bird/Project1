using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class adminkategoridetay : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategori_id"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_kategori where kategori_id=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();

                }
                bgl.Baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_kategori set kategori_adi=@1,kategori_adet=@p2 where kategori_id=@p3", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}