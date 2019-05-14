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
    public partial class 用户管理 : Form
    {
        public 用户管理()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            comboBox1.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (textBox2.Text == "" || textBox1.Text == "" || comboBox1.Text == "")
                {
                    MessageBox.Show("用户名、密码和类型都要填写完整！");
                }
                else
                {
                    DClass1.conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = DClass1.conn;
                    cmd.CommandText = "insert users values('" + textBox1.Text + "','" + textBox2.Text + "','" + comboBox1.Text + "')";
                    cmd.ExecuteNonQuery();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("select * from users", DClass1.conn);
                    da.Fill(ds, "baseinform");
                    bindingSource1.DataSource = ds.Tables["baseinform"];
                    dataGridView1.DataSource = bindingSource1;
                    DClass1.conn.Close();
                    MessageBox.Show("添加用户成功！");

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

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "delete users where userName='" + textBox1.Text + "'";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from users", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("删除用户成功！");

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

        private void 用户管理_Load(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("Select * From users", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                textBox1.DataBindings.Add("Text", bindingSource1, "userName");
                textBox2.DataBindings.Add("Text", bindingSource1, "password");
                comboBox1.DataBindings.Add("Text", bindingSource1, "type");
                DClass1.conn.Close();
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

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "update users set password='" + textBox2.Text + "',type='" + comboBox1.Text + "' where userName='" + textBox1.Text + "'";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from users", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("修改用户信息成功！");

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
