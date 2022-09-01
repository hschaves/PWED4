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

</head>
<body>

<div class="container">
	<h2>Cadastro</h2>
	<form id="frmCadastro">
		   <div class="form-group mb-4">
		   		<label class="form-label" for="nome">Nome</label>
		        <input type="text" id="nome"  name="nome" class="form-control" />
		        
		    </div>
		    
		    <div class="form-group">
		    	<label class="form-label" for="email">E-mail</label>
		        <input type="email" id="email" name="email"  class="form-control" />
		        
		    </div>
		
		  <div class="form-group">
		  	<label class="form-label" for="cpf">CPF</label>
		    <input type="text" id="cpf" name="cpf"  class="form-control" />
		    
		  </div>
		
		  <div class="form-group">
		  	<label class="form-label" for="endereco">Endereço</label>
		    <input type="text" id="endereco"  name="endereco"  class="form-control" />
		    
		  </div>
		  
		  <div class="form-group">
		  	<label class="form-label" for="cidade">Cidade</label>
		    <input type="text" id="cidade"  name="cidade"  class="form-control" />
		    
		  </div>
		
		  <div class="form-group">
		  	<label class="form-label" for="telefone">Telefone</label>
		    <input type="text" id="telefone"  name="telefone"  class="form-control" />
		  </div>
		
		  <button type="button" id="btnCadastro" class="btn btn-primary btn-block mb-4">Cadastrar</button>
		
	</form>
	<div id="teste"></div>
</div>
  <script type="text/javascript">
	$(document).ready(function() {
		$('#btnCadastro').click(function() {
			var frmData = $('#frmCadastro').serialize();
			// alert(frmData);
			$("#teste").html("Enviou:" + frmData);
			$.ajax({
				url: "respondedor2.jsp",
				data: frmData,
				type: "POST",
				success: function( data ) {
					// $("#teste").html( $("#teste").html()+"<br>Retornou:" + data);
					$("#teste").html( data );
					alert( data );
				}
			}); 
		});
	});
  </script>
</body>
</html>
