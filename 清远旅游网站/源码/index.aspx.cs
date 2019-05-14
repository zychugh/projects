using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    public String[] news_title;
    public String[] news_content;
    public Default2()
    {
        SqlConnection con = conn.CreateConnection();
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter("select * from news", con);
        adp.Fill(ds, "news");
        news_title = new String[ds.Tables[0].Rows.Count];
        news_content = new String[ds.Tables[0].Rows.Count];
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            news_title[i] = ds.Tables[0].Rows[i]["newsHead"].ToString();
            news_content[i] = ds.Tables[0].Rows[i]["newsCon"].ToString();
        }
        con.Close();
    }
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
        //加载图片
        string path = "";
        Image[] pics = { this.walking, this.living, this.eating };
        SqlConnection con = conn.CreateConnection();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "select picName from indexPics";
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "indexPics");
        for (int i = 0; i < pics.Length; i++)
        {
            path = "./img/" + ds.Tables["indexPics"].Rows[i]["picName"].ToString().Trim();
            //Response.Write(path);
            pics[i].ImageUrl = path;
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