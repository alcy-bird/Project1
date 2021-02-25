using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategori_id"];
            SqlCommand komut = new SqlCommand("select * from tb_yemekler where kategori_id=@p1", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}