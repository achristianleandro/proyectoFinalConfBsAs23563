<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<% 
	String nom=request.getParameter("nomAdd");
	String ape=request.getParameter("apeAdd");
	String email=request.getParameter("emailAdd");
	String foto=request.getParameter("fotoAdd");
	String dni=request.getParameter("dniAdd");
    String temas=request.getParameter("temasAdd");
    String etiquetas=request.getParameter("etiquetasAdd");
    String etiquetasDos=request.getParameter("etiquetas2Add");
	
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
        
	try{
		Integer insOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, fotoPerfil, dni, temas, etiquetas, etiquetasDos) VALUES ('"+nom+"','"+ape+"','"+email+"','"+foto+"',"+dni+",'"+temas+"','"+etiquetas+"','"+etiquetasDos+"') ");
		
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