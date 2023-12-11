<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String buscar=request.getParameter("buscar");
	
 	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar(); 
	try{
		st.executeQuery("SELECT * FROM usuarios WHERE nombre LIKE '%"+buscar+"%' OR apellido LIKE '%"+buscar+"%' OR user LIKE '%"+buscar+"%';");
		response.sendRedirect("../view/listadoUsuarios.jsp?buscar="+buscar);
	
	}
	catch(Exception e){
		response.sendRedirect("../view/listadoUsuarios.jsp?mensaje=Error%20al%20buscar%20usuario");
		e.printStackTrace();
	}
	
%>