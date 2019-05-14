using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (textBox2.Text == ""||textBox1.Text == "")
                {
                    MessageBox.Show("用户名和密码不能为空！");
                }
                else
                {
                    if (comboBox1.Text=="")
                    {
                        MessageBox.Show("请选择登录类型！");
                    }
                    else
                    {
                        DClass1.conn.Open();
                        string userName = textBox2.Text;
                        string password = textBox1.Text;
                        string type = comboBox1.Text;
                        string sql = string.Format("select count(*) from users where userName='{0}' and password='{1}' and type='{2}'", userName, password, type);//查询是否有该条记录，根据账户密码类型
                        SqlCommand cmd = new SqlCommand(sql, DClass1.conn);
                        int i = Convert.ToInt32(cmd.ExecuteScalar());
                        DClass1.conn.Close();
                        //如果记录大于0说明输入用户、密码和类型存在正确,则登录成功                
                        if (i > 0)
                        {
                            MessageBox.Show("登录成功，进入系统主界面！");
                            this.Hide();
                            Form2 f2 = new Form2();
                            f2.ShowDialog();
                        }
                        else
                        {
                            MessageBox.Show("用户名或者密码错误，请重新输入！");

                        }

                    }
                }
            }
            catch
            {
                MessageBox.Show("打开数据库失败！");
            }
            finally
            {
                DClass1.conn.Close();
            }
        }
    }
}
