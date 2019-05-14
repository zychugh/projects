using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

public partial class administrator : System.Web.UI.Page
{
    private string uploadDirectory;//文件保存路径
    protected void Page_Load(object sender, EventArgs e)
    {
        //默认将文件保存到站点根文件夹下的 img 中
        uploadDirectory = Path.Combine(Request.PhysicalApplicationPath, "img");               

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
   
        //加载文字
        if (!IsPostBack)
        {
            showText();            
        }
    }

    private void showText() 
    {
        SqlConnection con = conn.CreateConnection();
        con.Open();
        string sql = "select newsHead, newsCon from news";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "news");
        titleText.Text = ds.Tables[0].Rows[0]["newsHead"].ToString();
        contentText.Text = ds.Tables[0].Rows[0]["newsCon"].ToString();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //判断是否有文件提交
        if (FileUpload1.PostedFile.FileName == "")
        {
            lblInfo.Text = "请选择要上传的文件";
        }
        else
        {
            //判断文件的大小是否超过200kb
            if (FileUpload1.PostedFile.ContentLength > 20480000 && FileUpload1.PostedFile.ContentLength > 0)
            {
                lblInfo.Text = "文件必须大于0KB且不能超过20480000KB.";
            }
            else
            {
                //判断文件类型
                string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                switch (extension.ToLower())
                {
                    case ".jpg":
                    case ".png":
                        break;
                    default:
                        lblInfo.Text = "文件类型不是.jpg | .png";
                        return;
                }
                //以下代码将保存文件到web服务器中uploadDirectory 变量指定的路径下
                //文件名维持原文件名不变
                string serverFileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string fullUploadPath = Path.Combine(uploadDirectory, serverFileName);
                try
                {
                    FileUpload1.PostedFile.SaveAs(fullUploadPath);  //上传文件
                    lblInfo.Text = "文件：" + serverFileName;
                    lblInfo.Text += "成功上传到";
                    lblInfo.Text += fullUploadPath;
                }
                catch (Exception ee)
                {
                    lblInfo.Text = ee.Message; //上传文件失败，显示出错信息
                }
            }

            string fn = FileUpload1.PostedFile.FileName;
            string cg = Category.Text.Trim();
            //decimal size = FileUpload1.PostedFile.ContentLength;
            SqlConnection con = conn.CreateConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update indexPics set picName = '" + fn + "' where category ='" + cg + "'";
            Response.Write(cg);
            cmd.ExecuteNonQuery();
            
            //加载图片
            string path = "";
            Image[] pics = { this.walking, this.living, this.eating };
            //SqlConnection mycon = conn.CreateConnection();
            SqlCommand mycmd = con.CreateCommand();
            mycmd.CommandText = "select picName from indexPics";
            //con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(mycmd);
            DataSet ds = new DataSet();
            adp.Fill(ds, "indexPics");
            for (int i = 0; i < pics.Length; i++)
            {
                path = "./img/" + ds.Tables["indexPics"].Rows[i]["picName"].ToString().Trim();
                //Response.Write(path);
                pics[i].ImageUrl = path;
            }
            con.Close();
        }
    }
    
    protected void type_SelectedIndexChanged(object sender, EventArgs e)
    {
        string tp = type.Text.Trim();
        SqlConnection con = conn.CreateConnection();
        con.Open();
        string sql = "select newsHead, newsCon from news where type = '" + tp + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "news");
        titleText.Text = ds.Tables[0].Rows[0]["newsHead"].ToString();
        contentText.Text = ds.Tables[0].Rows[0]["newsCon"].ToString();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string tp = type.Text.Trim();
        string tt = titleText.Text.Trim();
        string ct = contentText.Text.Trim();
        SqlConnection con = conn.CreateConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "update news set newsHead = '" + tt + "', newsCon = '" + ct + "' where type = '" + tp + "'";
        cmd.ExecuteNonQuery();
        con.Close();
    }
}