using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class admyemekler : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["yemek_id"];
                islem = Request.QueryString["islem"];

                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("select kategori_adi,kategori_id from tbl_kategori", bgl.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "kategori_adi";
                DropDownList1.DataValueField = "kategori_id";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            //yemek listesi
            SqlCommand komut = new SqlCommand("select * from tb_yemekler", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand silkomut = new SqlCommand("delete from tb_yemekler where yemek_id=@p1", bgl.Baglanti());
                silkomut.Parameters.AddWithValue("@p1", id);
                silkomut.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }

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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            //yemek ekleme
            SqlCommand komut = new SqlCommand("insert into tb_yemekler(yemek_adi,yemek_malzeme,yemek_tarif,kategori_id)values (@t1,@t2,@t3,@t4)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@t1", TextBox1.Text);
            komut.Parameters.AddWithValue("@t2", TextBox2.Text);
            komut.Parameters.AddWithValue("@t3", TextBox3.Text);
            komut.Parameters.AddWithValue("@t4", DropDownList1.SelectedValue);            
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            Response.Write("tarifiniz eklenmiştir.");

            //kategori sayısını arttırma
            SqlCommand komut2 = new SqlCommand("update tbl_kategori set kategori_adet=kategori_adet+1 where kategori_id=@p1", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}