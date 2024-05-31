<%@ Control Language="VB" AutoEventWireup="false" CodeFile="navbar.ascx.vb" Inherits="navbar" %>
 

<nav class="navbar navbar-expand-lg bg-body-tertiary">

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="default.aspx">Inicio</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="documento.aspx">Documentos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="videos.aspx">Vídeos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="repostasForm.aspx">Fomulários</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="forum.aspx">Fórum</a>
				</li>
			</ul>
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="Pesquisa..." aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Pesquisar</button>
			</form>		
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="login.aspx">Login</a>
				</li>
					<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="cadastro.aspx">Cadastro</a>
				</li>
			</ul>

  
		</div>
</nav>