using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class admhakkimizda : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("select * from tb_hakkimizda", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            bgl.Baglanti().Close();
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("update tb_hakkimizda set metin=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                bgl.Baglanti().Close();
            }
        }
    }
}