using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Project1
{
    public class DBConnect
    {
        public SqlConnection Baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source = (localdb)\foodie; Initial Catalog = Dbo_yemektarifi; Integrated Security = True");
            baglan.Open();
            return baglan;
        }
    }
}