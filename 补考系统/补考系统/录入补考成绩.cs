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
    public partial class 录入补考成绩 : Form
    {
        public 录入补考成绩()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("Select * From [make-up exam] where cou_name = '" + textBox1.Text + "'", DClass1.conn);
                da.Fill(ds, "baseinform");
                dataGridView1.DataSource = ds.Tables["baseinform"];
                DClass1.conn.Close();
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

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                DClass1.conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = DClass1.conn;
                label2.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                cmd.CommandText = "update [make-up exam] set bkscore='" + textBox2.Text + "' where stu_name='"  + label2.Text + " '";
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select * from [make-up exam]", DClass1.conn);
                da.Fill(ds, "baseinform");
                dataGridView1.DataSource = ds.Tables["baseinform"];
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
