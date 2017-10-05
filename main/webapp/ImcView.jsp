<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>IMC</title>
<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<style>
.centro {
	width: 100px;
	height: 100px;
}
</style>
<script>
    function imprimirIMC(imc){
      alert("IMC: " + imc);
    }
    function limpar(){
      document.getElementById("peso").value="";
      document.getElementById("altura").value="";
    }
    $(document).ready(function(){
      $('.parallax').parallax();
    });
  </script>
</head>
<body>
	<div class="navbar-fixed">
		<nav class="blue">
			<div class="nav-wrapper">
				<a href="#" class="brand-logo center">Protótipo</a>
			</div>
		</nav>
	</div>

	<h1 class="header center blue-text">Calcule seu IMC</h1>
	<div class="divider"></div>
	<br>
	<div class="container centro">
		<div class="col s6 m6 l6">
			<form action="imcgleibson">
				<div class="row">
					<div class="input-field col">
						<h2 class="center blue-text prefix">
							<i class="material-icons">account_balance</i>
						</h2>
						<input name="peso" id="peso" type="number"
							class="validate blue-text" min="0" max="350"> <label
							class="blue-text" for="peso">Peso</label>
					</div>
					<br>
					<br>
					<div class="input-field col">
						<h2 class="center blue-text prefix">
							<i class="material-icons">accessibility</i>
						</h2>
						<input name="altura" id="altura" type="number" step="0.01" min="0"
							max="350" class="validate blue-text"> <label
							class="blue-text" for="altura">Altura</label>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<form action="imc.jsp" method="post">
		<p class="center-align">
			<input class="with-gap" name="group1" type="radio" id="h" checked />
			<label for="h">Homem</label>
		</p>
		<p class="center-align">
			<input class="with-gap" name="group1" type="radio" id="m" /> <label
				for="m">Mulher</label>
		</p>
	</form>
	<br>
	<br>
	<form action="imcgleibson">
		<div class="center">
			<a href="#" id="calcular" type="submit" class="btn-large waves-effect waves-light blue" onclick="imprimirIMC(${resultado})">Calcular</a> 
			&nbsp &nbsp	&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
			<a href="#" id="limpar"	type="reset" class="btn-large waves-effect waves-light blue" onclick="limpar()">Limpar</a>
		</div>
	</form>
	<br>
	<br>
	<br>
	<div class="section white">
		<div class="row container">
			<div class="section">
				<div class="row center">
					<div class="col s12">
						<div class="icon-block">
							<h2 class="center blue-text">
								<i class="material-icons">group</i>
							</h2>
							<h5 class="center">Tabela de parâmetros</h5>
							<table class="bordered centered responsive-table">
								<thead>
									<tr>
										<th data-field="id">Condição</th>
										<th data-field="name">IMC - Mulheres</th>
										<th data-field="price">IMC - Homens</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Abaixo do peso</td>
										<td>Abaixo de 19.1</td>
										<td>Abaixo de 20.7</td>
									</tr>
									<tr>
										<td>Peso ideal</td>
										<td>Entre 19.1 e 25.8</td>
										<td>Entre 20.7 e 26.4</td>
									</tr>
									<tr>
										<td>Sobrepeso</td>
										<td>Entre 25.8 e 27.3</td>
										<td>Entre 26.4 e 27.8</td>
									</tr>
									<tr>
										<td>Obesidade grau I</td>
										<td>Entre 27.3 e 32.3</td>
										<td>Entre 27.8 e 31.1</td>
									</tr>
									<tr>
										<td>Obesidade grau II</td>
										<td>Entre 32.3 e 36.4</td>
										<td>Entre 33.1 e 38.1</td>
									</tr>
									<tr>
										<td>Obesidade grau III</td>
										<td>Acima de 36.4</td>
										<td>Acima de 38,1</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<br>
		</div>
		<footer class="page-footer blue">
			<div class="container">
				<div class="row">
					<div class="col l6 s12">
						<h5 class="white-text">IMC</h5>
						<p class="grey-text text-lighten-4">Protótipo funcional
							para disciplina de Desenvolvimento de Software para a Web</p>
					</div>
					<div class="col l4 offset-l2 s12">
						<h5 class="white-text">Portais</h5>
						<ul>
							<li><a class="grey-text text-lighten-3"
								href="http://inf.ufg.br/">INF</a></li>
							<li><a class="grey-text text-lighten-3"
								href="https://www.ufg.br/">UFG</a></li>
							<li><a class="grey-text text-lighten-3"
								href="https://sigaa.sistemas.ufg.br">Sigaa</a></li>
							<li><a class="grey-text text-lighten-3"
								href="https://ead.inf.ufg.br/">Moodle</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer-copyright">
				<div class="container">© 2016 Gleibson Silva</div>
			</div>
		</footer>
	</div>
	<!--  Scripts-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>
</body>
</html>