<%@page import="java.util.function.Function"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
    <%@ page import="java.util.List" %>
    <%@ page import="modelo.Usuario" %>
    <jsp:useBean id="usuarioDao" class="dao.UsuarioDao" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Prova Tulio</title>
</head>
<body>
<div class="container-fluid">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Agenda</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(página atual)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar" name="pesquisa">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
    </form>
  </div>
</nav>
<table class="table">
<thead><tr>
	<th>Código</th>
	<th>Nome</th>
	<th>Email</th>
	<th>Telefone</th>
	<th>Endereço</th>
	<th>Bairro</th>
	<th>Cidade</th>
	<th>UF</th>
	<th colspan="2"> Operações</th>
	</tr></thead>
	<tbody>
<%
int id;
String nome;
String email;
String telefone;
String endereco;
String bairro;
String cidade;
String uf;
%>
<%
List<Usuario> users = null;
String pesquisa = request.getParameter("pesquisa");
if((pesquisa == null) || (pesquisa.equals(""))){
	users = usuarioDao.select();
}else {
	users = usuarioDao.selectByName(pesquisa);
}
for (Usuario userTMP : users){
	id = userTMP.getCodigo();
	nome = userTMP.getNome();
	email = userTMP.getEmail();
	telefone = userTMP.getTelefone();
	endereco = userTMP.getEndereco();
	bairro = userTMP.getBairro();
	cidade = userTMP.getCidade();
	uf = userTMP.getUf();
%>
	<tr>
	<td><%=id %></td>
	<td><%=nome %></td>
	<td><%=email %></td>
	<td><%=telefone %></td>
	<td><%=endereco %></td>
	<td><%=bairro %></td>
	<td><%=cidade %></td>
	<td><%=uf %></td>
	<td><a href='alterar.jsp?id=<%=id %>' class="btn btn-warning">Alterar</a></td>
	<td><a href='delete.jsp?codigo=<%=id %>' class="btn btn-danger">Deletar</a></td>
	</tr>
<%}%>	
</tbody>
</table>
<a class="btn btn-primary" data-toggle="modal" data-target="#modalNovoUsuario">Novo usuario</a>

<!-- The Modal -->
  <div class="modal hide fade" id="modalNovoUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Fazer login</h4>      	
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        
  <form action='insere.jsp' method="post">
    <div class="form-group">
  	  	<label for="nome" >Nome</label>
    		<input type="text" class="form-control" id="nome" placeholder="Digite seu nome..." name="nome">
    
        <label for="email">E-mail:</label>
      		<input type="email" class="form-control" id="email" placeholder="Digite seu email..." name="email">
      		
      	<label for="telefone">Telefone</label>
      		<input type="number" class="form-control" id="telefone" placeholder="Digite seu telefone..." name="telefone">
      		
      	<label for="endereco">Endereço</label>
      		<input type="text" class="form-control" id="endereco" placeholder="Digite seu endereço..." name="endereco">
      		
      	<label for="bairro">Bairro</label>
      		<input type="text" class="form-control" id="bairro" placeholder="Digite seu bairro..." name="bairro">
      		
      	<label for="cidade">Cidade</label>
      		<input type="text" class="form-control" id="cidade" placeholder="Digite sua cidade..." name="cidade">
      		
      	<label for="uf">UF</label>
      		<input type="text" class="form-control" id="uf" placeholder="Digite seu estado..." name="uf">
      		     	
    	<label>Senha</label>
    		<input type="password" class="form-control"  placeholder="Digite sua senha..." name="senha">
 
   		<label>Senha</label>
    		<input type="password" class="form-control"  placeholder="Confirme sua senha..." name="confSenha">
    </div>
    <button type="submit" class="btn btn-primary">Cadastrar</button>
  </form>
  
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
          
          <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
        </div>
        
      </div>
    </div>
  </div>
</div>
</body>
</html>