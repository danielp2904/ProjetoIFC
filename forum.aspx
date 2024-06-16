<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forum.aspx.vb" Inherits="forum" %>

<%@ Register Src="~/navbar.ascx" TagPrefix="uc1" TagName="navbar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum</title>
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
        body {
            background-color: #f2f2f2;
        }

        .inicio {
            background-color: white;
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        h1, h3 {
            text-align: center;
            margin: 30px;
        }

        .btn {
            text-align: center;
        }

        .lbl {
            margin: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
    <uc1:navbar runat="server" ID="navbar" />
    <form id="form1" class="needs-validation" runat="server" novalidate="novalidate">
        <div class="inicio">
            <h1>Fórum</h1>

            <div style="margin: 10px 0px;">
                <input id="txtAssunto" runat="server" class="form-control" type="text" placeholder="Assunto" required="required" />
            </div>

            <div class="form-group" style="margin: 10px 0px;">
                <textarea id="txtMensagem" runat="server" class="form-control" rows="3" placeholder="Mensagem" required="required"></textarea>
            </div>

            <div class="d-grid gap-2 col-3 mx-auto">
                <asp:Button ID="btnEnviar" type="submit" runat="server" class="btn btn-outline-success" Text="Cadastrar" />
            </div>

            <asp:Label class="lbl" ID="lblMensagem" runat="server"></asp:Label>

        </div>
    </form>
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
