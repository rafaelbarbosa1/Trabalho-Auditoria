<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="modelo.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<jsp:useBean id="uDao" class="dao.UsuarioDao"/>
<jsp:useBean id="u" class="modelo.Usuario"/>
<meta charset="UTF-8">
<title>Formulario de alteração</title>
</head>
<body>
<div class="container">
<%
int id = Integer.parseInt(request.getParameter("id")) ;

uDao.selectById(id);
List<Usuario> user = uDao.selectById(id);
String nome = user.get(0).getNome();
String email = user.get(0).getEmail();
String telefone = user.get(0).getTelefone();
String endereco = user.get(0).getEndereco();
String bairro = user.get(0).getBairro();
String cidade = user.get(0).getCidade();
String uf = user.get(0).getUf();
%>
<h3>Alteração de resgistro</h3>
<form action="update.jsp" method="post">
<div class="form-group">
 <label>Nome</label>
  <input type="text" class="form-control"  placeholder="Digite seu nome..." name="nome" value="<%=nome %>">
 </div>
 
 <div class="form-group">
 <label>E-mail</label>
  <input type="text" class="form-control"  placeholder="Digite seu e-mail..." name="email" value="<%=email %>">
 </div>
 
 <div class="form-group">
 <label>Telefone</label>
 <input type="number" class="form-control" placeholder="Digite seu telefone..." name="telefone" value="<%=telefone %>">
 </div>
 
 <div class="form-group">
 <label>Endereço</label>
 <input type="text" class="form-control" placeholder="Digite seu endereço..." name="endereco" value="<%=endereco %>" >
 </div>
 
 <div class="form-group">
 <label>Bairro</label>
 <input type="text" class="form-control" placeholder="Digite seu bairro..." name="bairro" value="<%=bairro %>">
 </div>
 
 <div class="form-group">
 <label>Cidade</label>
 <input type="text" class="form-control" placeholder="Digite sua cidade..." name="cidade" value="<%=cidade %>">
 </div>
 
 <div class="form-group">
 <label>UF</label>
 <input type="text" class="form-control" placeholder="Digite seu estado..." name="uf" value="<%=uf %>">
 </div>

<input type="hidden" name="codigo" value="<%=id %>"/>
 <button type="submit" class="btn btn-primary">Alterar</button>
 <a href="princ.jsp" class="btn btn-danger">Voltar</a>
 
</form>
</div>
</body>
</html>