using System;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string _kab1 = textBox1.Text.Substring(0, 3);
            string _kab2 = textBox3.Text.Substring(0, 3);

            int kab1 = int.Parse(_kab1 + textBox2.Text);
            int kab2 = int.Parse(_kab2 + textBox4.Text);
            if (kab2 < 2000)
            {
                    Form form2 = new Form2();
                    form2.ShowDialog();
            }

            else if (kab2 < 3000)
            {
                    Form form3 = new Form3(kab1, kab2);
                    form3.ShowDialog();
            }
            else if (kab2 < 4000)
            {
                    Form form4 = new Form4(kab1, kab2);
                    form4.ShowDialog();
                    
            }

            else if (kab2 < 5000)
            {
                    Form form5 = new Form5(kab1, kab2);
                    form5.ShowDialog();
            }

            else if (kab2 < 6000)
            {
                    Form form6 = new Form6(kab1, kab2);
                    form6.ShowDialog();
            }

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

    }
}
