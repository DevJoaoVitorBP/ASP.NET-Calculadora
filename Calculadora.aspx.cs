using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormsBootCamp2023
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double numero1, numero2, resultado;

            // Tenta converter o texto dos campos de entrada para números
            if (!double.TryParse(txtNumero1.Text, out numero1) || !double.TryParse(txtNumero2.Text, out numero2))
            {
                // Se a conversão falhar, exibe uma mensagem de erro e retorna
                lblResultadoTexto.Text = "Por favor, informe dois números válidos.";
                return;
            }

            // Realiza a operação selecionada
            switch (ddlOperacao.SelectedValue)
            {
                case "soma":
                    resultado = numero1 + numero2;
                    break;
                case "subtracao":
                    resultado = numero1 - numero2;
                    break;
                case "multiplicacao":
                    resultado = numero1 * numero2;
                    break;
                case "divisao":
                    // Verifica se o divisor é zero
                    if (numero2 == 0)
                    {
                        // Se for zero, exibe uma mensagem de erro e retorna
                        lblResultadoTexto.Text = "Divisão por zero não é permitida.";
                        return;
                    }
                    resultado = numero1 / numero2;
                    break;
                default:
                    // Se a operação selecionada não for válida, exibe uma mensagem de erro e retorna
                    lblResultadoTexto.Text = "Operação inválida.";
                    return;
            }

            // Exibe o resultado da operação
            lblResultadoTexto.Text = $"O resultado é: {resultado}";
        }
    }
}