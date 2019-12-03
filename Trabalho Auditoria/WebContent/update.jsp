<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="u" class="modelo.Usuario"/>
<jsp:useBean id="uDao" class="dao.UsuarioDao"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String nome = request.getParameter("nome");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");
String endereco = request.getParameter("endereco");
String cidade = request.getParameter("cidade");
String bairro = request.getParameter("bairro");
String uf = request.getParameter("uf");
int codigo = Integer.parseInt(request.getParameter("codigo"));


u.setNome(nome);
u.setEmail(email);
u.setTelefone(telefone);
u.setEndereco(endereco);
u.setBairro(bairro);
u.setCidade(cidade);
u.setUf(uf);
u.setCodigo(codigo);

uDao.update(u);
%>

<script>
alert("Resgistro alterado com sucesso.");
window.location.href = "princ.jsp";
</script>
</body>
</html>