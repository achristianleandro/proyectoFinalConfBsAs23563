<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<% 
	String nom=request.getParameter("nomAdd");
	String ape=request.getParameter("apeAdd");
	String rol=request.getParameter("rolAdd");
	String usu=request.getParameter("usuAdd");
	String pass=request.getParameter("passAdd");
	
	
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
        
	try{
		Integer insOk=st.executeUpdate("INSERT INTO usuarios (nombre, apellido, rol, user, pass) VALUES ('"+nom+"','"+ape+"','"+rol+"','"+usu+"','"+pass+"') ");
		
		if(insOk==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20usuario%20se%20cre�%20exitosamente");
		} else {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=Error%20al%20crear%20el%20usuario");		
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20usuario%20ya%20existe.%20Intente%20con%20otro%20diferente");
		e.printStackTrace();
	}
	
%>