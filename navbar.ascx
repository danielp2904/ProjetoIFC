<%@ Control Language="VB" AutoEventWireup="false" CodeFile="navbar.ascx.vb" Inherits="navbar" %>


<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="padding:0px 15px;">
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

        <ul class="d-flex" style="padding:0px 15px;">
            <li class="btn btn-outline-success me-2">
                <a class="nav-link active" aria-current="page" href="login.aspx">Login</a>
            </li>
            <li class="btn btn-outline-success">
                <a class="nav-link active" aria-current="page" href="cadastro.aspx">Cadastro</a>
            </li>
        </ul>
    </div>
</nav>
