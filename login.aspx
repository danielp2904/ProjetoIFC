<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
                        <input id="txtEmail" runat="server" class="form-control" type="text" placeholder="Email" required="required" />
                    </div>

                    <div class="p-2">
                        <input id="txtSenha" runat="server" class="form-control" type="password" placeholder="Senha" required="required" />
                    </div>

                    <div class="d-grid gap-2 col-6 mx-auto">
                        <asp:Button ID="BtnLogin" type="submit" runat="server" class="btn btn-outline-success" Text="Login" />
                    </div>
                    <center>
                        <br />
                        <span>Não tem login</span><br />
                        <a href="cadastro.aspx">Cadastre-se</a>
                        <asp:Label ID="lblMensagem" runat="server"></asp:Label><br />
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
