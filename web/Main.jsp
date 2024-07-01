<%
    String cookieName = "Sesion";
    String visitorName = "";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for (Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
            existeCookie = true;
            visitorName = cookie.getValue();
        }
    }
    if(!existeCookie){
    response.sendRedirect("index.jsp");  
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="css/main.css" rel="stylesheet">
  </head>
  <body class="main-body">
      <div class="container">
          <div class="navegacion">
               <nav class="navbar navbar-expand-lg navbar-light bg-warning">
            <a class="navbar-brand" href="#">Tu Tienda</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Productos</a>
                </li> 
                <li class="nav-item">
                  <a class="nav-link" href="#">Clientes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Ventas</a>
                </li>
              </ul>
            </div>
            <form action="cerrarSesion" method="POST">
                <input type="submit" class="btn btn-secondary logout-button" name="logOut" value="Salir">
            </form>
            
          </nav>
          </div>
         
          <div class="contenido p-5">
              <div class="container">
                  <h2>Bienvenid@ ${usuario.getNombre()} ${usuario.getApellidos()}</h2><br/>
                  <!--<h2>${usuario.getTelefono()}</h2>-->
                  <div class="contenedor-formulario">
                     <h4>Datos del Empleado</h4>
                  <form action="actualizarDatos" method="POST">
                      <p>Usuario:</p>
                      <input type="text" name="usuario" value="${usuario.getUsuario()}" disabled>
                      <p>Nombre:</p>
                      <input type="text" name="nombre" value="${usuario.getNombre()}"><br>
                      <p>Apellidos:</p>
                      <input type="text" name="apellidos" value="${usuario.getApellidos()}"><br>
                      <p>Telefono:</p>
                      <input type="text" name="telefono" value="${usuario.getTelefono()}"><br>
                      <br>
                  </form> 
                  </div>
              </div>
              
              
          </div>
      </div>
<div class="container" style="background-color: white;  ">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <span class="mb-3 mb-md-0 text-body-secondary">© 2024 Rivero Ian</span>
    </div>

  </footer>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
