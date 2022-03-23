<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Agenda de Contatos</title>
<style type="text/css">
h1 {
	text-align: center;
	color: #66bbff;
}
fieldset{
margin: 15px 150px;
}
#id{
border: 1px solid #ff0000;
}
.form-group{
margin-top: 15px;
}
.form-control{
padding: 15px;
}
</style>
</head>
<body>

	<form action="update" name="frmContato">
		<fieldset class="border p-2">
			<legend class="float-none w-auto p-2">
				<h1>Editar Contato</h1>
			</legend>
			<div class="form-group">
			<label for="id">ID:</label>
				<input type="text" class="form-control" id="id" 
					name="idcon" readonly value="<% out.print(request.getAttribute("idcon"));%>"> 
			</div>
			<div class="form-group">
			<label for="nome">Nome:</label>
				<input type="text" class="form-control" id="nome" 
					name="nome" value="<% out.print(request.getAttribute("nome"));%>"> 
			</div>
			<div class="form-group">
			<label for="fone">Telefone:</label>
				<input type="text" name="fone" class="form-control" id="fone" 
				value="<% out.print(request.getAttribute("fone"));%>"> 
			</div>
			<div class="form-group">
			<label for="email">E-mail:</label>
				<input type="email" class="form-control" id="email"
				 name="email" value="<% out.print(request.getAttribute("email"));%>"> 
			</div>
			<div class="form-group">
				<input class="btn btn-primary" type="button" value="Salva"
					onclick="validar()">
			</div>
	</form>
	<script src="scripts/validador.js"></script>
</body>
</html>