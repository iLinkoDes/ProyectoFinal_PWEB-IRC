<% 
    String cookieName = "Sesion";
    String valor = "";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for (Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
            existeCookie = true;
            valor = cookie.getValue(); 
        }
    }
    if(existeCookie){
        //request.getRequestDispatcher("Reconexion").forward(request,response);
        response.sendRedirect("Reconexion");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tu tienda</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="css/main.css" rel="stylesheet">
  </head>
  <body class="login-body">
      <div class="container index-container col-lg-4">
          <div class="card login-card">
              <div class="card-body">
                  
                  <form action="InicioSesion" class="form-sign" method="POST">    
                      <div class="form-group">
                          <h2>Inicio de Sesion</h2>
                          <br>
                          <h4>Introduzca sus credenciales:</h4>
                      </div>
                      <div class="form-group mt-2">
                          <p class="text-left">Usuario:</p>
                          <input type="text" name="usuario" class="form-control border border-dark">
                      </div>
                      <div class="form-group mt-2">
                          <p class="text-left">Contraseña:</p>
                          <input type="password" name="contra" class="form-control border border-dark">
                      </div>
                      <input type="submit" name="accion" value="Entrar" class="boton-formulario">
                  </form>
                  
                 <!--<h1>Bienvenido <%=valor%></h1>-->
                  
                  <% String errorMessage = (String) request.getAttribute("error"); %>
                    <% if (errorMessage != null) { %>
                        <div class="alert alerta">
                            <%= errorMessage %>
                        </div>
                    <% } %>
                  
              </div>
          </div>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>