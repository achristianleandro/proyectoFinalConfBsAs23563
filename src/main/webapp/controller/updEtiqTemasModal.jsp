<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String idModal=request.getParameter("idModal");
	String emailModal=request.getParameter("emailModal");
	String etiquetasModal=request.getParameter("etiquetasModal");
	String etiquetas2Modal=request.getParameter("etiquetas2Modal");
	String temasModal=request.getParameter("temasModal");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer updateOk=st.executeUpdate("UPDATE oradores SET etiquetas='"+etiquetasModal+"', etiquetasDos='"+etiquetas2Modal+"', temas='"+temasModal+"' WHERE email='"+emailModal+"'");
		
		if(updateOk==1) {
			response.sendRedirect("../view/inicio.jsp?id="+idModal+"&mensaje=El%20orador%20se%20modificó%20exitosamente");
		} else {
			response.sendRedirect("../view/inicio.jsp?id="+idModal+"&mensaje=El%20orador%20no%20se%20pudo%20modificar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/inicio.jsp?id="+idModal+"&mensaje=El%20orador%20no%20se%20pudo%20modificar");
		e.printStackTrace();

	}

%>