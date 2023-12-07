<nav class="navbar navbar-expand-md bg-body-tertiary">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Usuarios
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="listadoUsuarios.jsp">Listado Usuarios</a></li>
            <li><a class="dropdown-item" href="altaUsuario.jsp">Agregar Usuario</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Oradores
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="listOra.jsp">Listado Oradores</a></li>
            <li><a class="dropdown-item" href="altaOrador.jsp">Agregar Orador</a></li>
          </ul>
        </li>
      </ul>
      <form action="../controller/searchOrador.jsp" class="d-flex" role="search">
        <input class="form-control me-2" type="text" id="buscar" name="buscar" placeholder="Buscar orador" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Buscar</button>
      </form>
    </div>
  </div>
</nav>