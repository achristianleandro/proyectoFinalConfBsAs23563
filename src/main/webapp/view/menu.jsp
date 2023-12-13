<nav class="navbar navbar-expand-md bg-body-tertiary">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
   
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      

        <li class="nav-item">
        	<a class="nav-link" href="listadoUsuarios.jsp">Usuarios</a>
        	</li>
        <li class="nav-item">
        	<a class="nav-link" href="listOra.jsp">Oradores</a>
        </li>
      
        <!-- <li class="nav-item dropdown">
          
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Listados
          </a>
          
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="listadoUsuarios.jsp">Usuarios</a></li>
            <li><a class="dropdown-item" href="listOra.jsp">Oradores</a></li>
          </ul>

        </li> -->
        
      </ul>
      
      <%
		//Chequeo el path de la url
      String requestURI = request.getServletPath();
      
      if(requestURI.contains("/view/listOra.jsp")){ 
      
      %>
	      <form action="../controller/searchOrador.jsp" class="d-flex" role="search">
	        <div class="input-group mb-3">
		        <input class="form-control" type="text" id="buscar" name="buscar" placeholder="Buscar orador" aria-label="Search">
		        <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
		    </div>
	      </form>
	      
	  <%
      } else{
       %>
	       <form action="../controller/searchUsuario.jsp" class="d-flex" role="search">
	        <input class="form-control" type="text" id="buscar" name="buscar" placeholder="Buscar usuario" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
	      </form>
	  <%
      }
      %>
    
    </div>
  </div>
</nav>