using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyKhachSan
{
    public partial class frm_Start : Form
    {
        public frm_Start()
        {
            InitializeComponent();
        }

        private void butKhachHang_Click(object sender, EventArgs e)
        {

        }

        private void butLogIn_Click(object sender, EventArgs e)
        {
                MessageBox.Show("Welcome to QuanLyThuVien project", "^...^", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                butKhachHang.Visible = butDichVu.Visible = butDoDung.Visible = butPhong.Visible = butQLDichVu.Visible = butQLDoDung.Visible = butQLPhong.Visible = butLogOut.Visible = true;
                butLogIn.Visible = textID.Visible = textPass.Visible = label1.Visible = label2.Visible = false;
                panel2.Visible = panel3.Visible = true;
        }

        private void butPhong_Click(object sender, EventArgs e)
        {

        }

        private void butDoDung_Click(object sender, EventArgs e)
        {

        }

        private void butDichVu_Click(object sender, EventArgs e)
        {

        }

        private void butQLDichVu_Click(object sender, EventArgs e)
        {

        }

        private void butQLDoDung_Click(object sender, EventArgs e)
        {

        }

        private void butQLPhong_Click(object sender, EventArgs e)
        {

        }

        private void butLogOut_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Thanks for using QuanLyThuVien project", "^...^", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            butKhachHang.Visible = butDichVu.Visible = butDoDung.Visible = butPhong.Visible = butQLDichVu.Visible = butQLDoDung.Visible = butQLPhong.Visible = butLogOut.Visible = false;
            butLogIn.Visible = textID.Visible = textPass.Visible = label1.Visible = label2.Visible = true;
            panel2.Visible = panel3.Visible = false;
            textID.Text = textPass.Text = "";
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
