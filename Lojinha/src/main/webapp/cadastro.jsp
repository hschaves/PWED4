<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#btnCadastro").click(function() {
			var frmCadastro = $("#frmLogin").serialize();
			$("#msg").html("Enviou:" + frmCadastro);
			$.ajax({
				url: "respondedor.jsp",
				data: frmCadastro,
				type: "POST",
				success: function( data ) {
					$("#msg").html( $("#msg").html()+"<br>Retornou:" + data);
				}
			});
		});
	});
  </script>
</head>
<body>

<div class="container">
	<h2>Cadastro</h2>
	<form id="frmCadastro">
  		<div class="form-group">
		   <div class="form-outline mb-4">
		   		<label class="form-label" for="form6Example1">Nome</label>
		        <input type="text" id="nome" class="form-control" />
		        
		    </div>
		    
		    <div class="form-group">
		    	<label class="form-label" for="form6Example2">E-mail</label>
		        <input type="email" id="email" class="form-control" />
		        
		    </div>
		
		  <div class="form-group">
		  	<label class="form-label" for="form6Example3">CPF</label>
		    <input type="text" id="cpf" class="form-control" />
		    
		  </div>
		
		  <div class="form-group">
		  	<label class="form-label" for="form6Example4">Endereço</label>
		    <input type="text" id="endereco" class="form-control" />
		    
		  </div>
		  
		  <div class="form-group">
		  	<label class="form-label" for="form6Example5">Cidade</label>
		    <input type="text" id="cidade" class="form-control" />
		    
		  </div>
		
		  <div class="form-group">
		  	<label class="form-label" for="form6Example6">Telefone</label>
		    <input type="text" id="telefone" class="form-control" />
		  </div>
		
		  <button type="submit" id="btnCadastro" class="btn btn-primary btn-block mb-4">Cadastrar</button>
		</div>
		<div id="msg"></div>
	</form>
</div>

</body>
</html>
