using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {        
        string name = userName.Text;
        string pwd = password.Text;
        SqlConnection con = conn.CreateConnection();
        con.Open();           
        string strSql = "select password from [user] where userName= '" + name.Trim() + "'";
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.CommandText = strSql;
        SqlDataReader sqlread = cmd.ExecuteReader();
        if (sqlread.Read())
        {
            Session["yourname"] = name;
            Response.Redirect("index.aspx");
            con.Close();
        }
        else
        {
            con.Close();
        }
    }
}