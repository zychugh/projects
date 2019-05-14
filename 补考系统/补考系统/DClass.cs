using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace 客房管理系统
{

    public static class DClass
    {
        public static String strConn = "Data Source=.;Initial Catalog=宾馆;uid=sa;pwd=16115021055";
        public static SqlConnection conn = new SqlConnection(strConn);
    }
}
