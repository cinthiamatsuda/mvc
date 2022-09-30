<!doctype html>

<jsp:useBean id="Usuario" type="model.Usuario" scope="session"/> 

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
            crossorigin="anonymous" />

        <link rel="stylesheet" href="./assets/css/style.css">
        
        <title>Traveller | Área logada</title>
    </head>


    <header>
	  <nav class="navbar" style="background-color: #fffff; margin-left:25px; margin-top:30px">
      	<div class="d-flex flex-row bd-highlight mb-3" width="60px">
      		<a href="./"><img src="./assets/images/Logo_trans_branco.png" width="60px" height="60px"></a>
      		<p class="logo">Traveller</p>
	  	</div>
	 
	  	<div>
    		<form class="d-flex justify-content-end">
    		<input class="form-control mb-5 mt-5" type="search" aria-label="Search" style="margin-right:10px">
	      	<button class="btn btn-secondary btn-md mb-5 ms-1 mt-5" type="submit">Buscar</button>
	      	<button type="button" class="btn btn-link" style="margin-right:-10px"><img src="./assets/images/avatar.jpg" width="30px" height="30px" alt="Usuário"></button>
	      	<button type="button" class="btn btn-link" style="margin-right:-10px"><img src="./assets/images/contraste.png" width="30px" height="30px"></button>
	      	<button type="button" class="btn btn-link" style="margin-right:50px"><img src="./assets/images/fonte.png" width="30px" height="30px"></button>
    	    </form>
    	</div>
  	  </nav>
</header>

        <div class="container my-5">
            <div class="text-center mb-5">
                <h1 class="my-1"><b>Olá,<c:out value="${Usuario.nome}"/>!</b></h1>
                <h2>Vamos planejar a sua próxima viagem?</h2>


<div><br></div>
                
<div class="d-flex gap-4 justify-content-center">
    <a href="#" class="btn btn-secondary btn-lg" style="margin-right:10px">Hospedagem</a>
    <a href="#" class="btn btn-secondary btn-lg" style="margin-right:10px">Gastronomia</a>
    <a href="#" class="btn btn-secondary btn-lg" style="margin-right:10px">Aluguel de Carro</a>
    <a href="#" class="btn btn-secondary btn-lg">O que fazer</a>
  </div>
<div><br></div>
<div><hr></div>

<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous">
  </script>

<p class="texto text-center mt-5">Achamos que esses hoteis tem tudo a ver com você.</p>

<div class="row my-5">
    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/barracuda.jpg" class="card-img-top" alt="The Langham New York">
        <div class="card-body">
          <h5 class="card-title">Barracuda Hotel</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>

    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/gaia.jpg" class="card-img-top" alt="Equinox Hotel">
        <div class="card-body">
          <h5 class="card-title">Gaia Boutique Hotel</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>

    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/mangabeiras.jpg" class="card-img-top" alt="Pendry Manhattan West">
        <div class="card-body">
          <h5 class="card-title">Mangabeiras Hotel</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>

    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/sagui.jpg" class="card-img-top" alt="The Plaza New York">
        <div class="card-body">
          <h5 class="card-title">Pousada Sagui</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div> 
    

      
<footer>
      <div>
        <p>
          FIAP - Sistemas Para Internet
          <br>
          Fase 6 - Atividade 2 -  Cap. 5 - Arquitetura Back-end
        </p>
      </div>
    </footer>
    
  </html>