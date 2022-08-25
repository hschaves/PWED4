<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	DBQuery db = new DBQuery();
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	ResultSet rs = db.query("SELECT * FROM usuarios WHERE email = '" + email + "'");
// Consultar o BD
	String resposta = "Usuario nao existe";
	while(rs.next()){
		if(!senha.equals(rs.getString(3))){
			resposta = "Senha incorreta";
		}
		else{
			resposta = "Login bem sucedido";
		}
	}
	out.print(resposta);
%>