<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>

<% 
	String idUsuOra=request.getParameter("idUsuOra");
	String nomUsuOra=request.getParameter("nomUsuOra");
	String apeUsuOra=request.getParameter("apeUsuOra");
	String emailUsuOra=request.getParameter("emailUsuOra");
	String fotoUsuOra=request.getParameter("fotoUsuOra");	
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
        
	try{
		st.executeUpdate("UPDATE usuarios SET rol='orador' WHERE id="+idUsuOra);
		Integer insOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, fotoPerfil) VALUES ('"+nomUsuOra+"','"+apeUsuOra+"','"+emailUsuOra+"','"+fotoUsuOra+"') ");
		
		if(insOk==1) {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20se%20cre�%20exitosamente");
		} else {
			response.sendRedirect("../view/listOra.jsp?mensaje=Error%20al%20crear%20el%20orador");		
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20ya%20existe.%20Intente%20con%20otro%20diferente");
		e.printStackTrace();
	}
	
%>