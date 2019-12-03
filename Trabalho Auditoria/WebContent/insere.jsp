<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
    
    <%@ page language="java" import="modelo.Usuario" %>
    <%@ page language="java" import="dao.UsuarioDao" %>
    <%@ page language="java" import="banco.ConexaoMysql"%>
 
 <%
 try{
 String nome = request.getParameter("nome");
 String email = request.getParameter("email");
 String telefone = request.getParameter("telefone");
 String endereco = request.getParameter("endereco");
 String cidade = request.getParameter("cidade");
 String bairro = request.getParameter("bairro");
 String uf = request.getParameter("uf");
 String senha = request.getParameter("senha");
 String confSenha = request.getParameter("confSenha");
 
 	Usuario u = new Usuario();
	
 	UsuarioDao uDao = new UsuarioDao();
	
	u.setNome(nome);
	u.setEmail(email);
	u.setTelefone(telefone);
	u.setEndereco(endereco);
	u.setBairro(bairro);
	u.setCidade(cidade);
	u.setUf(uf);
	u.setSenha(senha);
	u.setConfSenha(confSenha);
	
	uDao.insert(u);
 
 }catch (Exception e){
	 
 }
 
 %>
 <script>
 alert("Usuario cadastrado com sucesso.");
window.location.href = "index.jsp";
</script>
