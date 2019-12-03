<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="uDao" class="dao.UsuarioDao" />
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("codigo"));
uDao.excluir(id);
%>
<script>
alert("Resgistro excluido com sucesso.");
window.location.href = "princ.jsp";
</script>
<input>
</body>
</html>