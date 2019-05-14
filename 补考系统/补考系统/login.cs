using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace 客房管理系统
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (textBox1.Text == "")
                {
                    MessageBox.Show("用户名不能为空");
                }
                else
                {
                    if (textBox2.Text == "")
                    {
                        MessageBox.Show("密码不能为空!");
                    }
                    else
                    {
                        DClass.conn.Open();
                        string userName = textBox1.Text;
                        string password = textBox2.Text;
                        string sql = string.Format("select count(*) from login where userName='{0}' and password='{1} '", userName, password);//查询是否有该条记录，根据账户密码
                        SqlCommand cmd = new SqlCommand(sql, DClass.conn);
                        int i = Convert.ToInt32(cmd.ExecuteScalar());
                        DClass.conn.Close();
                        //如果记录大于0说明输入用户与密码存在正确,则登录成功                
                        if (i > 0)
                        {
                            MessageBox.Show("登录成功！");
                            this.Hide();
                            Form1 f1 = new Form1();
                            f1.ShowDialog();
                        }
                        else
                        {
                            MessageBox.Show("用户名或者密码错误！");

                        }
                        
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("异常错误" + ex);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            注册 zc = new 注册();
            zc.Show();
        }
    }
}
