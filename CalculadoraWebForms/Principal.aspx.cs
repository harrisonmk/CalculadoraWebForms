using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraWebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnCalcula_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNum1.Text) || string.IsNullOrWhiteSpace(txtNum2.Text))
            {
                lblResultado.Text = "Por favor, insira numeros validos.";
                return;
            }

            double num1 = Convert.ToDouble(txtNum1.Text);
            double num2 = Convert.ToDouble(txtNum2.Text);
            double result = 0;

            switch (ddlOperacao.SelectedValue)
            {
                case "add":
                    result = num1 + num2;
                    break;
                case "subtract":
                    result = num1 - num2;
                    break;
                case "multiply":
                    result = num1 * num2;
                    break;
                case "divide":
                    if (num2 != 0)
                        result = num1 / num2;
                    else
                        lblResultado.Text = "Nao e possivel dividir por zero.";
                    break;
            }

            lblResultado.Text = "Resultado: " + result.ToString();
        }


    }
}