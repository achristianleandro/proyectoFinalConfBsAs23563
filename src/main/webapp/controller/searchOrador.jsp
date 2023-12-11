<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<% 
	String buscar=request.getParameter("buscar");
	
 	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar(); 
	try{
		st.executeQuery("SELECT * FROM oradores WHERE nombre LIKE '%"+buscar+"%' OR apellido LIKE '%"+buscar+"%';");
		response.sendRedirect("../view/listOra.jsp?buscar="+buscar);
	
	}
	catch(Exception e){
		response.sendRedirect("../view/listOra.jsp?mensaje=Error%20al%20buscar%20orador");
		e.printStackTrace();
	}
	
%>