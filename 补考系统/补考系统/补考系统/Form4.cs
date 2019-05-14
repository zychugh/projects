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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
            comboBox1.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string date = dateTimePicker1.Value.ToString("yyyy/MM/dd HH:mm:ss");
            try
            {
                DClass1.conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "insert arrangement values('" + textBox3.Text + "','" + textBox4.Text + "','" + textBox5.Text + "','" + textBox6.Text + "','" + date + "','" + textBox2.Text + "','" + textBox1.Text + "','" + comboBox1.Text + "')";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from arrangement", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("保存成功！");

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

        private void button2_Click(object sender, EventArgs e)
        {
            string date = dateTimePicker1.Value.ToString("yyyy/MM/dd HH:mm:ss");
            try
            {
                DClass1.conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "update arrangement set claroom_name='" + textBox4.Text + "',cla_name='" + textBox5.Text + "',Invigilator='" + textBox6.Text + "',date='" + date + "',cou_name='" + textBox2.Text + "',number='" + textBox1.Text + "',Duration='" + comboBox1.Text + "' where scene='" + textBox3.Text + "'";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from arrangement", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("修改成功！");

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

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                cmd.CommandText = "delete arrangement where scene='" + textBox3.Text + "'";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from arrangement", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                DClass1.conn.Close();
                MessageBox.Show("删除成功！");

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

        private void Form4_Load(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("Select * From arrangement", DClass1.conn);
                da.Fill(ds, "baseinform");
                bindingSource1.DataSource = ds.Tables["baseinform"];
                dataGridView1.DataSource = bindingSource1;
                textBox3.DataBindings.Add("Text", bindingSource1, "scene");
                textBox4.DataBindings.Add("Text", bindingSource1, "claroom_name");
                textBox5.DataBindings.Add("Text", bindingSource1, "cla_name");
                textBox6.DataBindings.Add("Text", bindingSource1, "Invigilator");
                dateTimePicker1.DataBindings.Add("Text", bindingSource1, "date");
                textBox2.DataBindings.Add("Text", bindingSource1, "cou_name");
                textBox1.DataBindings.Add("Text", bindingSource1, "number");
                comboBox1.DataBindings.Add("Text", bindingSource1, "Duration");
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
    }
}
