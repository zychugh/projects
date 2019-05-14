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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("Select * From score", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                textBox1.DataBindings.Add("Text", bindingSource1, "cou_name");
                textBox2.DataBindings.Add("Text", bindingSource1, "stu_no");
                textBox3.DataBindings.Add("Text", bindingSource1, "cla_name");
                textBox4.DataBindings.Add("Text", bindingSource1, "stu_name");
                textBox5.DataBindings.Add("Text", bindingSource1, "score");
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

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                int i = Convert.ToInt32(textBox5.Text);
                if (i < 60)
                {
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.Connection = DClass1.conn;
                    cmd1.CommandText = "insert [make-up exam] values('" + textBox2.Text + "','" + textBox1.Text + "','" + textBox4.Text + "','" + null + "','" + textBox3.Text + "')";
                    cmd1.ExecuteNonQuery();
                }
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "insert score values('" + textBox4.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox1.Text + "','" + textBox5.Text + "')";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from score", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("添加成功！");

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex+"打开数据库失败！");

            }
            finally
            {
                DClass1.conn.Close();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                int i = Convert.ToInt32(textBox5.Text);
                if (i < 60)
                {
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.Connection = DClass1.conn;
                    cmd1.CommandText = "update [make-up exam] set stu_name='" + textBox4.Text + "',cla_name='" + textBox3.Text + "',cou_name='" + textBox1.Text + "' where stu_no='" + textBox2.Text + "'";
                    cmd1.ExecuteNonQuery();
                }
                else
                {
                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.Connection = DClass1.conn;
                    cmd2.CommandText = "delete [make-up exam] where stu_no='" + textBox2.Text + "'";
                    cmd2.ExecuteNonQuery();
                }
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "update score set stu_name='" + textBox4.Text + "',cla_name='" + textBox3.Text + "',cou_name='" + textBox1.Text + "',score='" + textBox5.Text + "' where stu_no='" + textBox2.Text + "'";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from score", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("修改成功！");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex+"打开数据库失败！");

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
                int i = Convert.ToInt32(textBox5.Text);
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = DClass1.conn;
                cmd1.CommandText = "delete [make-up exam] where stu_no='" + textBox2.Text + "'";
                cmd1.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "delete score where stu_no='" + textBox2.Text + "'";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from score", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("删除成功！");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex+"打开数据库失败！");

            }
            finally
            {
                DClass1.conn.Close();
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

    }
}
