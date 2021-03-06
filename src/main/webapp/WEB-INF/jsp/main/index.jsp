<html>
<head>
	<title>Contas Refeitas</title>
	<script src="http://d3js.org/d3.v2.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<script src="/bootstrap/js/bootstrap-modal.js"></script>
	<script src="/javascript/alluvial-data.js"></script>
	<script src="/javascript/alluvial-links.js"></script>
	<script src="/javascript/alluvial-settings.js"></script>
	<script src="/javascript/alluvial.js"></script>
	<script src="/javascript/jquery.qtip.min.js"></script>
	<script src="https://raw.github.com/BorisMoore/jsrender/master/jsrender.js"></script>
	<script src="/javascript/events.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
	<link type="text/css" rel="stylesheet" media="screen" href="/bootstrap/css/bootstrap.css">
	<link type="text/css" rel="stylesheet" media="screen" href="/stylesheets/style.css">
	<link type="text/css" rel="stylesheet" media="screen" href="/stylesheets/jquery.qtip.min.css">
</head>
<body>
	
	<header>
		<img id="logo" src="/images/logo_big.png" alt="Contas Refeitas" />
		<h1>Contas Refeitas</h1>
		<a href="https://github.com/jonasabreu/contas-refeitas"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"></a>
	</header>
	
	<section>
		<article id="info">
			<ul>
				<li class="heading">
					<h1>O que &#233;?</h1>
				</li>
				<li class="text">
					<p>Apresenta&#231;&#227;o dos dados financeiros da C&#226;mara Municipal de S&#227;o Paulo para o p&#250;blico interessado atrav&#233;s de navega&#231;&#227;o entre as divis&#245;es de gastos afim de expor dados de forma siplificada com textos e gr&#225;ficos.</p>
				</li>
				<li class="text line2">
					<p>Os dados de transpar&#234;ncia liberado pela Cam&#226;ra Municipal de S&#227;o Paulo n&#227;o est&#227;o em um formato simples de se ler, onde qualquer pessoa por tirar informa&#231;&#245;es. O Contas Refeitas tem o objetivo de mostrar estes dados de uma forma simples.</p>
				</li>
				<li class="heading line2">
					<h1>Por que?</h1>
				</li>
			</ul>
		</article>
	</section>
	<section>
		<article>
			<ul id="items" class="nav nav-pills">
				<li><a href="#">Items:</a></li>			
				<li class="active item"><a href="#">10</a></li>
				<li class="item"><a href="#">15</a></li>
				<li class="item"><a href="#">20</a></li>
			</ul>
			Come&ccedil;ando em: <div id="slider"></div>
		</article>
		<article>
			<div id="svg"></div>
		</article>
	</section>
	<footer>
		Todo o conte&#250;do deste site foi desenvolvido durante o Hackaton 2012 na C&#226;mara Municipal de S&#227;o Paulo por Jonas de Abreu, Juliano Alves e Raphael Molesim.
	</footer>
	<div id="tipTemplate" class="hidden">
		<div class='info-tip'>
			<h3>{{:name}}</h3>
			<ul>
				<li><label>% do Total:</label>{{:percentage_total}}</li>
				<li><label>% da Agrega&ccedil;&atilde;o:</label>{{:percentage_parent}}</li>
			</ul>
			<ul class="buttons">
			{{for buttons}}
				<li><button data-id="{{:id}}" data-url='{{:url}}' class='btn btn-{{:color}}'>{{:name}}</button></li>
			{{/for}}
			<ul>
		</div>
	</div>
	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-32103647-1']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>
</body>
</html>
