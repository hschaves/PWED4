<%@page import="classes.Usuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	int idUsuario = 0;
	String email  = request.getParameter("email");
	String senha  = "123456";
	int idNivelUsuario = 1;
	String nome = request.getParameter("nome");
	String cpf= request.getParameter("cpf");
	String endereco= request.getParameter("endereco");
	String bairro= "";
	String cidade= request.getParameter("cidade");
	String uf= "";
	String cep= "";
	String telefone= request.getParameter("telefone");
	String foto= "";
	String ativo= "N";
	
	
	Usuario usuario = new Usuario(idUsuario, email, senha, idNivelUsuario, nome, cpf, endereco, bairro, cidade, uf, cep, telefone, foto, ativo);
	out.print((usuario.save() > 0)?"Usuário Incluído!":"Erro ao incluir usuário!");
	
// Consultar o BD
	//String resposta = "Usuario nao existe";
	//while(rs.next()){
		//if(!senha.equals(rs.getString(3))){
			//resposta = "Senha incorreta";
		//}
		//else{
		//	resposta = "Login bem sucedido";
		//}
	//}
	//out.print(resposta);
%>