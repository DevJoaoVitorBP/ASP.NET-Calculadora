<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="ProjetoWebFormsBootCamp2023.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora</title>
</head>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

form {
    max-width: 100%;
    margin: 30px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"] {
    width: 300px;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 3px;
}

select {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 3px;
}

button {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 5px;
}

button:hover {
    background-color: #45a049;
}
    </style>
<body>
    <form id="form1" runat="server">   
        <h1>Calculadora</h1>

        <asp:Label ID="lblNumero1" runat="server" Text="Número 1:"></asp:Label>
        <asp:TextBox ID="txtNumero1" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblNumero2" runat="server" Text="Número 2:"></asp:Label>
        <asp:TextBox ID="txtNumero2" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblOperacao" runat="server" Text="Operação:"></asp:Label>
        <asp:DropDownList ID="ddlOperacao" runat="server">
            <asp:ListItem Value="soma">Soma</asp:ListItem>
            <asp:ListItem Value="subtracao">Subtração</asp:ListItem>
            <asp:ListItem Value="multiplicacao">Multiplicação</asp:ListItem>
            <asp:ListItem Value="divisao">Divisão</asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
        <br />

        <asp:Label ID="lblResultado" runat="server" Text="Resultado:"></asp:Label>
        <asp:Label ID="lblResultadoTexto" runat="server"></asp:Label>

    </form>
</body>
</html>