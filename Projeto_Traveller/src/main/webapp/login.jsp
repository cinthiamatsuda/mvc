<!doctype html>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
            crossorigin="anonymous" />

        <link rel="stylesheet" href="./assets/css/style2.css">
        <title>Traveller | Login</title>
    </head>

    <header>
	  <nav class="navbar" style="background-color: #fffff; margin-left:25px; margin-top:30px">
      	<div class="d-flex flex-row bd-highlight mb-3" width="60px">
      		<a href="./"><img src="./assets/images/Logo_trans_branco.png" width="60px" height="60px"></a>
      		<p class="logo">Traveller</p>
	  	</div>
	  	<div>
    		<form class="d-flex justify-content-end">
	      	<a href="./" type="submit" class="btn btn-secondary btn-md mb-5 ms-1 mt-5">Voltar</a>
	      	<button type="button" class="btn btn-link" style="margin-right:-10px"><img src="./assets/images/contraste.png" width="30px" height="30px"></button>
	      	<button type="button" class="btn btn-link" style="margin-right:50px"><img src="./assets/images/fonte.png" width="30px" height="30px"></button>
    	    </form>
    	</div>
  	  </nav>
    </header>
    
        <div class="container-xxl" style="margin-top:-30px">
            <div class="text-center">
                <img src="./assets/images/mundo.png" width="300px" heigth="300px" alt="mundo">
            </div>

            <div class="row justify-content-center px-3">
                <div class="col-6 col-md-4 align-self-center">
                    <form method="post" action="./login" >

<!--Campo de e-mail  -->
                        <div class="form-group">
                            <label for="email" class="titulos">E-mail</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Informe o seu e-mail" autofocus required>
                        </div>

<!--Campo de senha  -->
                        <div class="form-group">
                            <label for="senha" class="titulos">Senha</label>
                            	<div class="input-group mb-2">
                                	<input type="password" class="form-control senha" id="senha" name="senha" placeholder="Informe a sua senha" required>
		                                <div class="input-group-prepend">
		                                    <div class="input-group-text">
		                                    <img src="./assets/images/visibilidade.png" class="pointer visibilidade" alt="botão para exibir senha">
		                                    </div>
		                                </div>
                            	</div>
                        </div>
        <p style="text-align:center"><a href="#"><u>Esqueci a minha senha</u></a></p>
		<p style="text-align:center">Ao continuar, você concorda com os <a href="#">Termos de uso</a> e confirma que leu nossa <a href="#">Política de privacidade e cookies.</a></p>
		<div class="row justify-content-center px-3">
		<button type="submit" class="btn btn-secondary">Fazer login</button>
		</div>
                    </form>
                </div>
            </div>
        </div>

        <script src="./assets/js/script.js"></script>
    </body>
</html>