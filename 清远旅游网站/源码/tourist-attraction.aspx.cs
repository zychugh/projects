using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class tourist_attraction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yourname"] == null)
        {
            HyperLink1.Visible = true;
        }
        else
        {
            HyperLink1.Visible = false;
        }
    }
    protected void sureBtn_Click(object sender, EventArgs e)
    {
        if (Session["yourname"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string feedbackTxt = feedback.Text;
            string userName = Session["yourname"].ToString();
            SqlConnection con = conn.CreateConnection();
            con.Open();
            string sqlstr = "insert into feedback (userName,feedback) values('" + userName + "','" + feedbackTxt + "')";
            SqlCommand mycmd = new SqlCommand(sqlstr, con);
            mycmd.ExecuteNonQuery();
            con.Close();
        }
    }
}