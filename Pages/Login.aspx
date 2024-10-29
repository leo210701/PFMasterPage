<%@ Page Title="" Language="C#" 
    AutoEventWireup="true" CodeBehind="Login.aspx.cs"
    Inherits="AppListaDeCompras.Login" %>

<%-- MasterPageFile="~/MasterPage/ListaDeCompras.Master" --%>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5"  runat="server">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<%--<input class="input100" type="text" name="username" placeholder="User name">--%>
						<asp:TextBox CssClass="input100" type="text" Font-Names="username" placeholder="User name" runat="server" />
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
				<%--		<input class="input100" type="password" name="pass" placeholder="Password">--%>
						<asp:TextBox CssClass="input100" type="password" Font-Names="pass" placeholder="Password" runat="server" />
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<%--<button class="login100-form-btn">
							Login
						</button>--%>
						<asp:Button CssClass="login100-form-btn" Text="login" runat="server" onClick="Unnamed_Click"/>
					</div>

				</form>
			</div>
		</div>
	</div>
 
  
    
</body>
</html>

