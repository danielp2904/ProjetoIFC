<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cadastro.aspx.vb" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FORM Contato</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />

    <style>
        .img {
            margin: 15px;
        }

        a {
            font-size: 16px;
            text-align: center;
            text-decoration: none;
        }

        .btn {
            text-align: center;
        }

        .btnCenter {
            align-items: center;
            justify-content: center;
            display: flex;
        }
    </style>
</head>
<body>
    <form class="login100-form validate-form needs-validation" id="form1" runat="server" novalidate="novalidate">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="img">
                        <img src="images/logo-ifc.png" alt="Logo do IFC" />
                    </div>

                    <div class="p-2">
                        <input id="txtNome" runat="server" class="form-control" type="text" placeholder="Nome" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtEmail" runat="server" class="form-control" type="text" placeholder="Email" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtInstituicao" runat="server" class="form-control" type="text" placeholder="Instituicao" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtCidade" runat="server" class="form-control" type="text" placeholder="Cidade" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtCampus" runat="server" class="form-control" type="text" placeholder="Campus" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtCurso" runat="server" class="form-control" type="text" placeholder="Curso" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtSenha" runat="server" class="form-control" type="password" placeholder="Senha" required="required" />
                    </div>

                    <div class="d-grid gap-2 col-6 mx-auto">
                        <asp:Button ID="BtnCadastrar" type="submit" runat="server" class="btn btn-outline-success" Text="Cadastrar" />
                    </div>
                    <center>
                        <br />
                        <span>Já tem o cadastro?</span><br />
                        <a href="login.aspx">Login</a>
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label><br />
                        <asp:Label ID="lblMensagem1" runat="server"></asp:Label>
                    </center>
                </div>
            </div>
        </div>
    </form>

    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
        (function () {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
</body>
</html>
