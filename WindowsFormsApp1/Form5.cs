using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form5 : Form
    {
        public Form5(int kab, int korp)
        {
            InitializeComponent();
            switch (korp)
            {
                case 1: 
                    break;
                case 2:
                    break;
                case 3:
                    switch (kab)
                    {
                        case 426: 
                            label426.Visible = true;
                            break;
                        case 427:
                            label427.Visible = true;
                            break;
                        case 445:
                            label445.Visible = true;
                            break;
                    }
                    break;
                case 4:
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
