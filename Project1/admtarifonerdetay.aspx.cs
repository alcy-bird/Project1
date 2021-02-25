using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class admtarifonerdetay : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarif_id"];
            SqlCommand komut = new SqlCommand("select * from tb_tarifler where tarif_id=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox5.Text = dr[5].ToString();
                TextBox6.Text = dr[6].ToString();

            }
            bgl.Baglanti().Close();
           
            if (Page.IsPostBack == false)
            {
                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategori", bgl.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "kategori_adi";
                DropDownList1.DataValueField = "kategori_id";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //durum güncelleme
            SqlCommand komut = new SqlCommand("update tb_tarifler set tarif_durum=1 where tarif_id=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

            //yemeği anasayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into tb_yemekler(yemek_adi,yemek_malzeme,yemek_tarif,kategori_id) values (@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
            
        }
    }
}