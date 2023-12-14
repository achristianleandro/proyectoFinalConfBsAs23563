<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String id=request.getParameter("idDel");
	String emailDel=request.getParameter("emailDel");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer deleteOk=st.executeUpdate("DELETE FROM oradores WHERE id="+id);
		st.executeUpdate("UPDATE usuarios SET rol='orador (pendiente de aprobación)' WHERE user='"+emailDel+"'");
		
		if(deleteOk==1) {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20se%20eliminÃ³%20exitosamente");
		} else {
			response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20no%20se%20pudo%20eliminar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=El%20orador%20no%20se%20pudo%20eliminar");
		e.printStackTrace();
	}
	
%>