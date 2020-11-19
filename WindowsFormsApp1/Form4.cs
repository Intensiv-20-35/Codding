using System;
using System.Drawing;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form4 : Form
    {
        public Form4(int kab, int korp)
        {
            InitializeComponent();
            switch (korp)
            {
                case 1:

                    break;
                case 2:

                    break;
                case 3:

                    break;
                case 4:

                    break;
            }
        }


        private void Form4_Load(object sender, EventArgs e)
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
