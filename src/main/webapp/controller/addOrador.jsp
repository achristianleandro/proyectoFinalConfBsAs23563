<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<% 
	String nom=request.getParameter("nomAdd");
	String ape=request.getParameter("apeAdd");
	String email=request.getParameter("emailAdd");
	String dni=request.getParameter("dniAdd");
	
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer insOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, dni, etiquetas,temas) VALUES ('"+nom+"','"+ape+"','"+email+"',"+dni+",'','') ");
		
		if(insOk==1) {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20se%20creó%20exitosamente");
		} else {
			response.sendRedirect("../view/listOra.jsp?mensaje=Error%20al%20crear%20el%20orador");		
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20ya%20existe.%20Intente%20con%20otro%20diferente");
		e.printStackTrace();
	}
	
%>