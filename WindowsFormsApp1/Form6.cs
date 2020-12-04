using System;
using System.Drawing;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form6 : Form
    {
        public Form6(int kab, int korp)
        {
            InitializeComponent();
            switch (korp)
            {
                case 1:
                    break;
                case 2:
                    switch (kab)
                    {
                        case 505: // кабинеты 2 корпуса с маркером
                            label505.Visible = true;
                            break;
                    }
                    break;
                case 3:
                    break;
                case 4:
                    break;
            }
        }

        private void buttonZoomIn_Click(object sender, EventArgs e)//масштаб
        {
            panel1.Scale(new SizeF(1.1f, 1.1f));
        }

        private void buttonZoomOut_Click(object sender, EventArgs e)
        {
            panel1.Scale(new SizeF(0.9f, 0.9f));
        }
    }
 }

