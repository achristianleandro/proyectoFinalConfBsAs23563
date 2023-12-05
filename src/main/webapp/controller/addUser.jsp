<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	//conectarme a la db
	//validar que el user y pass existan
	// dar mensaje ok o error

	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	String repPass=request.getParameter("repPass");
	
	//TODO: comprobar que pass==repPass
	
	//out.println(user);
	//out.println(pass);
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer insOk=st.executeUpdate("INSERT INTO usuarios (user,pass,rol) VALUES ('"+user+"','"+pass+"','user')");
		
		if(insOk==1) {
			response.sendRedirect("../view/login.jsp?mensaje=El%20usuario%20se%20creó%20exitosamente");
		} else {
			response.sendRedirect("../view/registro.jsp?mensaje=Error%20al%20crear%20el%20usuario");		
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/registro.jsp?mensaje=El%20usuario%20ya%20existe.%20Intente%20con%20otro%20diferente");
		e.printStackTrace();
	}
	
%>