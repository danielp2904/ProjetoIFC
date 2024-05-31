<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
        .img{
            margin:15px;
        }
        a{
         color:black;
         font-size:16px;
         text-align:center;
        }
    </style>

</head>
<body>
    <form class="login100-form validate-form" id="form1" runat="server">
        <div class="limiter">
		    <div class="container-login100">
			    <div class="wrap-login100">
                    <div class ="img">
                    <img src="images/logo-ifc.png" alt="Logo do IFC"/>

                    </div>
                    
                 <div class="wrap-input100 validate-input">
                 <asp:TextBox ID="txtEmail" runat="server" type="text" class="input100" name="email"></asp:TextBox>
                 <span class="focus-input100" data-placeholder="Email:"></span>
                 </div>
                    
                 <div class="wrap-input100 validate-input" data-validate="Enter password">
                 <asp:TextBox ID="txtSenha" runat="server" type="text" class="input100" TextMode="Password"></asp:TextBox>
                 <span class="focus-input100" data-placeholder="Senha:"></span>
                 </div>
                                
                    <div class="container-login100-form-btn">
				<div class="wrap-login100-form-btn">
					<div class="login100-form-bgbtn"></div>
                        <asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="Login"/>
				</div>
				</div>
                    <center>
                    <br /><span>Não tem login?<a href="cadastro.aspx">   Cadastre-se</a></span>
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label><br /></center>
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

</body>
</html>
