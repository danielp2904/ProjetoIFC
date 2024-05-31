<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="paginaInicial" %>
<%@ Register Src="~/navbar.ascx" TagPrefix="uc2" TagName="navbar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio</title>
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

        h1, h2, h3 {
            text-align: center;
			margin:30px;
        }

        p {
            text-indent: 1em;
			margin:10px;
        }
		</style>


</head>
<body>
    <uc2:navbar runat="server" ID="navbar" />
    <form id="form1" runat="server">
        <div class="inicio">
			<h1>If Para Todos</h1>
			<h2>Tema</h2>
			<p>O desenvolvimento de um fórum sobre a evolução da acessibilidade dentro dos campi do Instituto Federal Catarinense(IFC).</p>

			<h2>Problema</h2>

			<p> A implementação de um fórum de discussão no site oficial do IFC.</p> 

			<h2>Justificativa</h2>

			<p>Dados estatísticos dos anos 2000 (IBGE), apresenta-se no Brasil 24,6 milhões de pessoas com algum tipo de deficiência, o que equivale a 14,5% da população. Desse total, 48% apresenta deficiência visual, 23% deficiência motora, 16% deficiência auditiva, 9% deficiência mental e 4% deficiência física. Confia-se a todos os setores da sociedade, que estejam preparados para atender as pessoas com deficiência de forma honrada, responsável e satisfatória. No entanto, é importante pensar sobre como a conscientização desse importante tema é realizada, além de maneiras de influenciar a agremiação de ensino, pesquisa e extensão do IFC a importar-se mais com o tema.
			Pensando nisso, o presente projeto tem por objetivo a criação de um protótipo com informações sobre como os campi do IFC se adaptaram às leis de acessibilidade previstas na constituição federal, bem como a criação de um fórum, sendo esse protótipo anexado ao site oficial do IFC. A criação de uma discussão sobre esse tema é de extrema importância, pois conforme a teoria do método socrático de debate, a maiêutica, um debate envolvendo diferentes pontos de vista geram novas ideias. Sendo assim, a geração de novas ideias poderá gerar uma conscientização a comunidade acadêmica do IFC.
			Em síntese, o projeto visa a promoção da conscientização dentro da comunidade acadêmica do IFC. Não basta cumprir requisitos legais; é essencial que todos os membros da instituição reconheçam a importância da inclusão e se envolvam ativamente nesse processo. O fórum, como uma plataforma de discussão aberta, pode desencadear diálogos construtivos e confronto de ideias, o que levará a insights valiosos e à promoção de uma cultura de acessibilidade.
			Por fim, a inclusão de um protótipo com informações sobre a evolução da acessibilidade no site oficial do IFC demonstra transparência e prestação de contas à sociedade. Isso permite que alunos, funcionários e outros interessados acompanhem o progresso e as iniciativas relacionadas à acessibilidade, criando um ambiente de responsabilidade institucional.
			Conforme os argumentos apresentados ao longo dos parágrafos anteriores, o projeto do fórum de acessibilidade para o IFC vai além do cumprimento de obrigações legais; ele representa um passo significativo em direção a uma instituição mais inclusiva e consciente. Através desse espaço de debate, busca-se promover a sensibilização, compartilhar conhecimentos e construir uma comunidade acadêmica que valorize a diversidade e a igualdade de oportunidades.</p>

			<h2>Objetivos</h2>
				<h3>Objetivo Geral</h3>
		<p>Desenvolver um protótipo sobre acessibilidade para ser implementado no site oficial do IFC, inserindo assim no site da instituição um importante menu para tratar desse importante tema.</p>
			<h3>Objetivos Específicos</h3>
		<p>Divulgar as informações coletadas em um protótipo desenvolvido pelos integrantes do projeto, a fim de conscientizar a comunidade acadêmica do IFC sobre a importância deste importante meio
		Gerar uma discussão de alto nível em um fórum incluso juntamente às informações disponibilizadas pelos integrantes do  projeto, para assim permitir a criação de novas idéias sobre o tema apresentado.
		Anexar o protótipo citado junto ao site oficial do IFC, a fim de tornar esse importante meio de discussão disponível para estudantes e servidores do IFC.</p>


        </div>
    </form>
</body>
</html>
