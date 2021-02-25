using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class amdyemekduzenle : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemek_id"];
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from tb_yemekler where yemek_id=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
              
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }
                bgl.Baglanti().Close();
            }
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
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update tb_yemekler set yemek_adi=@p1,yemek_malzeme=@p2,yemek_tarif=@p3,kategori_id=@p4,yemek_img=@p6 where yemek_id=@p5", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.Parameters.AddWithValue("@p6", "~/img/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //tüm yemekleri durumunu false yapıyor
            SqlCommand komut = new SqlCommand("update tb_yemekler set durum=0", bgl.Baglanti());
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

            //günün yemeğini seç
            SqlCommand komut2 = new SqlCommand("update tb_yemekler set durum=1 where yemek_id=@p1", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}