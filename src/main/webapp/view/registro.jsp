<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
</head>

<body class="bg-body-secondary">
    <!-- Barra de navegacion -->
    <header>

        <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand ms-5" href="#">
                    <img src="images/codoacodo.png" alt="Logo CAC" class="animate__animated animate__flipInX w-25">
                    <span>Conf BsAs</span>
                </a>
                <button class="navbar-toggler position-absolute end-0 me-5" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse me-5" id="navbarText">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                        </li>
                    </ul>
                    <span class="navbar-text">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#conferencia">La conferencia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#oradores">Los oradores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#lugar-fecha">El lugar y la fecha</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#form-oradores">Conviértete en orador</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-success" href="tickets/comprarTicket.html">Comprar Ticket</a>
                            </li>
                        </ul>
                    </span>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <div class="bg-light border rounded m-3 p-2 d-flex flex-column align-items-center ">
        <div class="fs-4 my-3">Registro de Usuario</div>

        <!-- Formulario con usuario y pass -->
        <div>
            <form action="../controller/addUser.jsp" method="post">
                <input type="email" onkeyup="validarUser()" name="user" id="user" class="form-control mb-3" placeholder="usuario" required>
                <!-- <input type="password" onkeyup="mostrarFortCant()" name="pass" id="pass" class="form-control mb-3" placeholder="contraseña" required> -->
                <div class="input-group mb-3">
                    <input type="password" id="pass" name="pass" onkeyup="validarPassDiscriminada()" class="form-control" placeholder="Constraseña" aria-label="Username" aria-describedby="basic-addon1">
                    <span class="input-group-text" id="basic-addon1">
                        <a href="#">
                            <i class="bi bi-eye-slash-fill" id="icono" onclick="mostrarPass()"></i>
                        </a>
                    </span>
                </div>
                
                <div class="input-group mb-3">
                	<input type="password" name="repPass" id="repPass" onkeyup="passIguales()" class="form-control" placeholder="Reingrese la constraseña" required>
                    <span class="input-group-text" id="basic-addon1">
                        <a href="#">
                            <i class="bi bi-eye-slash-fill" id="icono2" onclick="mostrarRepPass()"></i>
                        </a>
                    </span>
                </div>
                  
		<input type="password" name="repPass" id="repPass" onkeyup="passIguales()" class="form-control mb-3" placeholder="Reingrese la constraseña" required> 
                <input type="submit" value="Registrar" class="btn btn-primary mb-3" id="btn-enviar" disabled>
                <input type="reset" value="Limpiar" class="btn btn-primary mb-3">
                <div id="mensaje"></div>
            </form>

        </div>
		<% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='bg-danger text-center p-1 rounded'>");
				out.println(mensaje);
				out.println("</div>");
			}	
		%>		

    </div>
 
    </main>

    <!-- Pie de página -->
    <footer
        class="d-flex flex-column flex-lg-row justify-content-center align-items-center fw-bold column-gap-4 row-gap-3 py-4 mt-5">
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Preguntas frecuentes</a>
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Contáctanos</a>
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Prensa</a>
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Conferencias</a>
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Términos y condiciones</a>
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Privacidad</a>
        <a class="link-light text-decoration-none" href="javascript:alert('Esta página no se encuentra disponible');">Estudiantes</a>
        </div>

    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

    <script src="js/registro.js"></script>
</body>

</html>
