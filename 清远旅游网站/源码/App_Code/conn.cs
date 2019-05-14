using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// conn 的摘要说明
/// </summary>
public class conn
{
	public conn()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static SqlConnection CreateConnection()
    {
        SqlConnection con = new SqlConnection("server =DESKTOP-LGCKLOP\\SQLEXPRESS;database = qyly;uid = sa;pwd = zyc;");
        return con;
    }
}