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
    public partial class 补考成绩统计 : Form
    {
        public 补考成绩统计()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == "按班级名称统计")
            {
                label3.Visible = true; label4.Visible = true; 
                try
                {
                    DClass1.conn.Open();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter("select * from [make-up exam] where bkscore<60 and cla_name='" + textBox1.Text + "'", DClass1.conn);
                    da.Fill(ds, "baseinform");
                    dataGridView1.DataSource = ds.Tables["baseinform"];
                    SqlCommand cmd = new SqlCommand("select count(distinct stu_no) from [make-up exam] where bkscore<60 and cla_name='" + textBox1.Text + "' ", DClass1.conn);
                    Int32 count = (Int32)cmd.ExecuteScalar();
                    label4.Text = count.ToString();
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
            if (comboBox1.Text == "按课程名称统计")
            {
                label3.Visible = true; label4.Visible = true; 
                try
                {
                    DClass1.conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("select * from [make-up exam] where bkscore<60 and cou_name='" + textBox1.Text + "' ", DClass1.conn);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "baseinform");
                    dataGridView1.DataSource = ds.Tables["baseinform"];
                    SqlCommand cmd = new SqlCommand("select count(distinct stu_no) from [make-up exam] where bkscore<60 and cou_name='" + textBox1.Text + "' ", DClass1.conn);
                    Int32 count = (Int32)cmd.ExecuteScalar();
                    label4.Text = count.ToString();
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
}
