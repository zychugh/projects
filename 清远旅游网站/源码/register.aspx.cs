using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {        
        if (password.Text != compare.Text)
        {
            error.Visible = true;
            error.Text = "密码不一致！";
        }
        else
        {
            string name = userName.Text;
            string pwd = password.Text;
            try
            {
                SqlConnection con = conn.CreateConnection();
                con.Open();
                string strsql = "insert into [user] values('" + name + "','" + pwd + "','" + null + "')";
                SqlCommand cmd = new SqlCommand(strsql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                name = "";
                pwd = "";
                Response.Redirect("login.aspx");
            }
            catch
            {
            }
        }        
    }
}