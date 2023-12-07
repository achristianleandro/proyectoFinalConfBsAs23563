<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>altaOrador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>

    <body>
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
                                    <a class="nav-link text-success" href="tickets/comprarTicket.html">Comprar
                                        Ticket</a>
                                </li>
                            </ul>
                        </span>
                    </div>
                </div>
            </nav>
        </header>

        <H1 class="m-5 ">Agregar orador</H1>

        <div class="container my-5">
            <form action="/controller/addOrador.jsp" class="row mx-5">

                <div class="col-12 col-md-6  my-3">
                    <input type="text" name="nomAdd" placeholder="nombre" class="form-control">
                </div>
                <div class=" col-12 col-md-6 my-3">
                    <input type="text" name="apeAdd" placeholder="apellido" class="form-control">
                </div>
                <div class="col-12 col-md-6 my-3">
                    <input type="text" name="etiquetasAdd" placeholder="etiquetas" class="form-control">
                </div>
                
                <div class="col-12 my-3">
                    <textarea name="temasAdd" id="temasAdd" cols="30" rows="4" placeholder="desarrolle los temas de su exposicion"></textarea>

                </div>

                
                <div class="col-12 col-md-6 my-3">
                    <input type="text" id="dniAdd" name="dniAdd" placeholder="dni" class="form-control">
                </div>
                <%/*
                <div class="col-12 col-md-6 my-3    ">
                    <input type="number" name="tel" placeholder="telefono" class="form-control">
                </div>
                */%>
                <div class="col-12 col-md-6 my-3">
                    <input type="text" name="emailAdd" placeholder="email" class="form-control">
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6 my-3">
                        <button type="submit" class="btn btn-primary">Agregar</button>
                    </div>
                    <div class="col-12 col-md-6 my-3">
                        <button type="submit" class="btn btn-primary">cancelar</button>
                    </div>
                </div>
            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

    </body>

</html>