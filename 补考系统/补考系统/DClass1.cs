using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace WindowsFormsApplication1
{
    class DClass1
    {
        public static String strConn = "Data Source=.;Initial Catalog=exam;uid=sa;pwd=16115021055";
        public static SqlConnection conn = new SqlConnection(strConn);
    }
}
