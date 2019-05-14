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
    public partial class 查询考场安排 : Form
    {
        public 查询考场安排()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == "按班级名称查询")
            {
                try
                {
                    DClass1.conn.Open();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("select * from arrangement where cla_name='" + textBox1.Text + "'", DClass1.conn);
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
            if (comboBox1.Text == "按课程名称查询")
            {
                try
                {
                    DClass1.conn.Open();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("select * from arrangement where cou_name='" + textBox1.Text + "' ", DClass1.conn);
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

        private void 查询考场安排_Load(object sender, EventArgs e)
        {

        }
    }
}
