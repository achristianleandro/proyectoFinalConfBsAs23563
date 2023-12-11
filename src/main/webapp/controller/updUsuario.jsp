<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String idUpd=request.getParameter("idUpd");
	String nom=request.getParameter("nom");
	String ape=request.getParameter("ape");
	String rol=request.getParameter("rol");
	String usu=request.getParameter("user");
	String cont=request.getParameter("pass");
	
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try{
		Integer updateOk=st.executeUpdate("UPDATE usuarios SET nombre='"+nom+"', apellido='"+ape+"', rol='"+rol+"', user='"+usu+"', pass='"+cont+"' WHERE id="+idUpd);
		
		if(updateOk==1) {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20usuario%20se%20modificó%20exitosamente");
		} else {
			response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20usuario%20no%20se%20pudo%20modificar");
		}

	}
	catch(Exception e){
		response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=El%20usuario%20no%20se%20pudo%20modificar");
		e.printStackTrace();

	}

%>