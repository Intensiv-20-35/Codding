using System;
using System.Drawing;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form5 : Form
    {
        public Form5(int kab1, int kab2)
        {
            InitializeComponent();

            switch (kab2)
            {
                case 4263: 
                label4263.Visible = true;
                break;
                case 4273:
                label4273.Visible = true;
                break;
                case 4453:
                label4453.Visible = true;
                break;
            }
        }

        private void Form5_Load(object sender, EventArgs e)
        {
             
        }

        private void buttonZoomIn_Click(object sender, EventArgs e)
        {
            panel1.Scale(new SizeF(1.1f, 1.1f));
        }

        private void buttonZoomOut_Click(object sender, EventArgs e)
        {
            panel1.Scale(new SizeF(0.9f, 0.9f));
        }

    }
}
