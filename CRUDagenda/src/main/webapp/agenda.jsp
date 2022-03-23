<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
@ SuppressWarnings("unchecked")//tira a ? 
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="icon" href="imagens/favicon.png">

<title>Agenda de Contatos</title>

<style>
.table{
	width: 90%;
    text-align: center;
    margin: 0 auto;
}
#btn{
margin-bottom: 25px
}
h1 {
	color: #66bbff;
}
div{
text-align: center;
}

</style>
</head>
<body>
	<div>
		<h1>Agenda de Contatos</h1>
		<a href="novo.html" id="btn" class="btn btn-primary">Novo Contato</a>
		<a href="report" id="btn" class="btn btn-danger">Relatório</a>
	</div>

	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nome</th>
				<th scope="col">Telefone</th>
				<th scope="col">E-mail</th>
				<th scope="col">Opçôes</th>
				
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<tr>
			
				<td><%=lista.get(i).getIdcon()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
				<td><a href="select?idcon=<%=lista.get(i).getIdcon() %>" 
				class="btn btn-warning">Editar</a>
				<a href="javascript: confirmar(<%=lista.get(i).getIdcon() %>)" class="btn btn-danger">Deletar</a>
				</td>
				
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>