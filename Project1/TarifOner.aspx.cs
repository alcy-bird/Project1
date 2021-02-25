using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class TarifOner : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tb_tarifler(tarif_ad,tarif_malzeme,tarif_yapilis,tarif_img,tarif_sahip,tarif_sahipmail)values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtTarifMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", txtTarifYapilis.Text);
            komut.Parameters.AddWithValue("@t4", TarifImg.FileName);
            komut.Parameters.AddWithValue("@t5", txtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", txtOnerenMail.Text);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            Response.Write("tarifiniz alınmıştır.");
        }
    }
}