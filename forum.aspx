<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forum.aspx.vb" Inherits="forum" %>

<%@ Register Src="~/navbar.ascx" TagPrefix="uc1" TagName="navbar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	<style>
		body{
			background-color:#f2f2f2;
		}
        .inicio {
			background-color:white;
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
		h1, h3 {
            text-align: center;
			margin:30px;
        }
		.btn{
			text-align:center;
		}
		.lbl{
			margin:30px;
			text-align:center;
		}
	</style>
</head>
<body>
    <uc1:navbar runat="server" ID="navbar" />
    <form id="form1" runat="server">
        <div class="inicio">
			<h1>Fórum</h1>

			<h3>Assunto</h3>
			<div>
			<asp:TextBox ID="txtAssunto" runat="server" BorderColor="Black" BorderStyle="Solid" Width="267px"></asp:TextBox><br />
			</div>

			<h3>Mensagem:</h3>
			<div>
			<asp:TextBox ID="txtMensagem" runat="server" TextMode="MultiLine" BorderColor="Black" BorderStyle="Solid" Height="248px" Width="411px"></asp:TextBox><br />
			</div>
			
			<asp:Button class="btn" ID="btnEnviar" runat="server" Text="Enviar" Height="39px" Width="218px" /><br />

			<asp:Label class="lbl" ID="lblMensagem" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
