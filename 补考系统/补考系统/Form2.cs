using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void 补考成绩ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            补考成绩统计 f1 = new 补考成绩统计();
            f1.ShowDialog();
        }

        private void 用户信息ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            用户管理 f1 = new 用户管理();
            f1.ShowDialog();
        }

        private void 记录补考名单ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form3 f1 = new Form3();
            f1.ShowDialog();
        }

        

        private void 补考成绩报告单ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bkmd f1 = new bkmd();
            f1.ShowDialog();
        }

        private void 安排补考教室ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 考场安排ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form4 f1 = new Form4();
            f1.ShowDialog();
        }

        private void 录入补考成绩ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            录入补考成绩 f1 = new 录入补考成绩();
            f1.ShowDialog();
        }

        private void 退出系统ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void 查询考场安排ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            查询考场安排 f1 = new 查询考场安排();
            f1.ShowDialog();
        }
    }
}
