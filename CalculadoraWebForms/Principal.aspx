<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="CalculadoraWebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Calculadora</title>

    <style>
        body {
            background-color: #f0f8ff;
        }

        .form-container {
            display: flex;
            flex-direction: row;
            align-items: center;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 0 auto;
            width: 400px;
        }

    </style>



</head>
<body>


     <div class="form-container">

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitle" runat="server" Text="CALCULADORA" Font-Size="20" />
            <br />
            <br />

            <asp:Label ID="num1" runat="server" Text="Insira um numero: " />
            <asp:TextBox ID="txtNum1" runat="server" Width="100" Style="margin-bottom: 10px;" />
            <br />
            <asp:Label class="altura-label" ID="Label2" runat="server" Text="Insira um numero: " />
            <asp:TextBox ID="txtNum2" runat="server" Width="100" />
            <br />
            <asp:DropDownList ID="ddlOperacao" runat="server" Style="margin-top: 20px; margin-left: 30px">
                <asp:ListItem Text="Adição" Value="add" />
                <asp:ListItem Text="Subtração" Value="subtract" />
                <asp:ListItem Text="Multiplicação" Value="multiply" />
                <asp:ListItem Text="Divisão" Value="divide" />
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnCalcula" runat="server" Text="Calcular" OnClick="btnCalcula_Click" Style="margin-bottom: 20px; margin-left: 30px" />
            <br />
            <br />
            <asp:Label ID="lblResultado" runat="server" Text="Resultado: " Style="margin-left: 30px; color: red" />
        </div>
    </form>

         </div>

</body>
</html>
