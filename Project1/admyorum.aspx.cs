using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project1
{
    public partial class admyorum : System.Web.UI.Page
    {
        DBConnect bgl = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //onaylı yorumlar
            SqlCommand onaylikomut = new SqlCommand("select * from tb_yorumlar where yorum_onay=1", bgl.Baglanti());
            SqlDataReader dr = onaylikomut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

            //onaysız yorumlar
            SqlCommand onaysizkomut = new SqlCommand("select * from tb_yorumlar where yorum_onay=0", bgl.Baglanti());
            SqlDataReader dr2 = onaysizkomut.ExecuteReader();
            DataList1.DataSource = dr2;
            DataList1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }
    }
}