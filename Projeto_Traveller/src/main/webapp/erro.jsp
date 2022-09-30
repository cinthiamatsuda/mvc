<!doctype html>
<jsp:useBean id="ErroMSG" type="java.lang.String" scope="request"></jsp:useBean>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />

<link rel="stylesheet" href="./assets/css/style2.css">
<title>Traveller | Erro</title>
</head>

<body>
    <header>
	  <nav class="navbar" style="background-color: #fffff; margin-left:25px; margin-top:30px">
      	<div class="d-flex flex-row bd-highlight mb-3" width="60px">
      		<a href="./"><img src="./assets/images/Logo_trans_branco.png" width="60px" height="60px"></a>
      		<p class="logo">Traveller</p>
	  	</div>
	  	<div>
    		<form class="d-flex justify-content-end">
	      	<a href="./login.jsp" type="submit" class="btn btn-secondary btn-md mb-5 ms-1 mt-5">Voltar</a>
	      	<button type="button" class="btn btn-link" style="margin-right:-10px"><img src="./assets/images/contraste.png" width="30px" height="30px"></button>
	      	<button type="button" class="btn btn-link" style="margin-right:50px"><img src="./assets/images/fonte.png" width="30px" height="30px"></button>
    	    </form>
    	</div>
  	  </nav>
    </header>


	<div class="container my-5">
		<div class="text-center">
			<img src="./assets/images/detetive.png" class="logo" alt="" width="250px" heigth="250px">
		</div>

		<div class="row text-center">
			<div class="col-12 col-sm-12 align-self-center">
			<h3> <c:out value="${ErroMSG}"/></h3>
			<p style="text-align:center"><a href="#"><u>Esqueci a minha senha</u></a></p>
			</div>
		</div>
	</div>

	
</body>
</html>