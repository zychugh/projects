namespace WindowsFormsApplication1
{
    partial class Form2
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.系统维护ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.用户信息ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.数据录入ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.记录补考名单ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.录入补考成绩ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.考场安排ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.查询打印ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.补考成绩报告单ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.补考成绩ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.查询考场安排ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.退出系统ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.系统维护ToolStripMenuItem,
            this.数据录入ToolStripMenuItem,
            this.考场安排ToolStripMenuItem,
            this.查询打印ToolStripMenuItem,
            this.退出系统ToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(680, 28);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // 系统维护ToolStripMenuItem
            // 
            this.系统维护ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.用户信息ToolStripMenuItem});
            this.系统维护ToolStripMenuItem.Name = "系统维护ToolStripMenuItem";
            this.系统维护ToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.系统维护ToolStripMenuItem.Text = "系统维护";
            // 
            // 用户信息ToolStripMenuItem
            // 
            this.用户信息ToolStripMenuItem.Name = "用户信息ToolStripMenuItem";
            this.用户信息ToolStripMenuItem.Size = new System.Drawing.Size(138, 24);
            this.用户信息ToolStripMenuItem.Text = "用户管理";
            this.用户信息ToolStripMenuItem.Click += new System.EventHandler(this.用户信息ToolStripMenuItem_Click);
            // 
            // 数据录入ToolStripMenuItem
            // 
            this.数据录入ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.记录补考名单ToolStripMenuItem,
            this.录入补考成绩ToolStripMenuItem});
            this.数据录入ToolStripMenuItem.Name = "数据录入ToolStripMenuItem";
            this.数据录入ToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.数据录入ToolStripMenuItem.Text = "数据录入";
            // 
            // 记录补考名单ToolStripMenuItem
            // 
            this.记录补考名单ToolStripMenuItem.Name = "记录补考名单ToolStripMenuItem";
            this.记录补考名单ToolStripMenuItem.Size = new System.Drawing.Size(168, 24);
            this.记录补考名单ToolStripMenuItem.Text = "登记学生成绩";
            this.记录补考名单ToolStripMenuItem.Click += new System.EventHandler(this.记录补考名单ToolStripMenuItem_Click);
            // 
            // 录入补考成绩ToolStripMenuItem
            // 
            this.录入补考成绩ToolStripMenuItem.Name = "录入补考成绩ToolStripMenuItem";
            this.录入补考成绩ToolStripMenuItem.Size = new System.Drawing.Size(168, 24);
            this.录入补考成绩ToolStripMenuItem.Text = "录入补考成绩";
            this.录入补考成绩ToolStripMenuItem.Click += new System.EventHandler(this.录入补考成绩ToolStripMenuItem_Click);
            // 
            // 考场安排ToolStripMenuItem
            // 
            this.考场安排ToolStripMenuItem.Name = "考场安排ToolStripMenuItem";
            this.考场安排ToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.考场安排ToolStripMenuItem.Text = "考场安排";
            this.考场安排ToolStripMenuItem.Click += new System.EventHandler(this.考场安排ToolStripMenuItem_Click);
            // 
            // 查询打印ToolStripMenuItem
            // 
            this.查询打印ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.补考成绩报告单ToolStripMenuItem,
            this.补考成绩ToolStripMenuItem,
            this.查询考场安排ToolStripMenuItem});
            this.查询打印ToolStripMenuItem.Name = "查询打印ToolStripMenuItem";
            this.查询打印ToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.查询打印ToolStripMenuItem.Text = "查询统计";
            // 
            // 补考成绩报告单ToolStripMenuItem
            // 
            this.补考成绩报告单ToolStripMenuItem.Name = "补考成绩报告单ToolStripMenuItem";
            this.补考成绩报告单ToolStripMenuItem.Size = new System.Drawing.Size(168, 24);
            this.补考成绩报告单ToolStripMenuItem.Text = "补考名单统计";
            this.补考成绩报告单ToolStripMenuItem.Click += new System.EventHandler(this.补考成绩报告单ToolStripMenuItem_Click);
            // 
            // 补考成绩ToolStripMenuItem
            // 
            this.补考成绩ToolStripMenuItem.Name = "补考成绩ToolStripMenuItem";
            this.补考成绩ToolStripMenuItem.Size = new System.Drawing.Size(168, 24);
            this.补考成绩ToolStripMenuItem.Text = "补考成绩统计";
            this.补考成绩ToolStripMenuItem.Click += new System.EventHandler(this.补考成绩ToolStripMenuItem_Click);
            // 
            // 查询考场安排ToolStripMenuItem
            // 
            this.查询考场安排ToolStripMenuItem.Name = "查询考场安排ToolStripMenuItem";
            this.查询考场安排ToolStripMenuItem.Size = new System.Drawing.Size(168, 24);
            this.查询考场安排ToolStripMenuItem.Text = "查询考场安排";
            this.查询考场安排ToolStripMenuItem.Click += new System.EventHandler(this.查询考场安排ToolStripMenuItem_Click);
            // 
            // 退出系统ToolStripMenuItem
            // 
            this.退出系统ToolStripMenuItem.Name = "退出系统ToolStripMenuItem";
            this.退出系统ToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.退出系统ToolStripMenuItem.Text = "退出系统";
            this.退出系统ToolStripMenuItem.Click += new System.EventHandler(this.退出系统ToolStripMenuItem_Click);
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(680, 346);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form2";
            this.Text = "主界面";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 系统维护ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 用户信息ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 数据录入ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 记录补考名单ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 录入补考成绩ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 考场安排ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 查询打印ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 补考成绩报告单ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 补考成绩ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 退出系统ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 查询考场安排ToolStripMenuItem;
    }
}