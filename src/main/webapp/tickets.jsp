<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Trabajo Integrador Java</title>
    <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/estilos.css">
</head>
<body>
     <header>
        <nav class="navbar navbar-expand-lg navbar-dark grisOscuro">
            <div class="container">
              <a class="navbar-brand" href="#">
                  <img src= "./assets/img/codoacodo.png" class="logo" alt="Logo de codo a codo 4.0">
              </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-end">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="./index.jsp">La conferencia</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="./index.jsp#oradores">Los oradores</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="./index.jsp#lugarFecha">Lugar y Fecha</a>
                    </li>
                  <li class="nav-item">
                      <a class="nav-link" href="./index.jsp#formularioOrador">Conviertete en orador</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link colorVerde" href="#">Comprar Tickets</a>
                    </li>
                  <li class="nav-item">
                        <a class="nav-link" href="./login.jsp">LogIn</a>
                   </li>
                </ul>
              </div>
            </div>
          </nav> 
    </header> 
    
    <section class="container flex-wrap align-items-center justify-content-center">
      <div class="row tarjetas justify-content-center">
        
        <div class="col md-6 tarjeta1">
          <h1>Estudiante</h1><br>
          <p>Tienen un descuento</p><br>
          <p class="porcentaje">80%</p><br>
          <p>*presentar documentacion</p>
        </div>
        
        <div class="col md-6 tarjeta2">
          <h1>Trainee</h1><br>
          <p>Tienen un descuento</p><br>
          <p class="porcentaje">50%</p><br>
          <p>*presentar documentacion</p>
        </div>

        <div class="col md-6 tarjeta3">
          <h1>Junior</h1><br>
          <p>Tienen un descuento</p><br>
          <p class="porcentaje">15%</p><br>
          <p>*presentar documentacion</p>
        </div>

      </div>

    </section>
    <div class="animacion">
      
      <h2 class="tituloGrande">VALOR DE TICKET $200</h2>
    </div>

     <section class="formVentas" id="formVentas">
        <div class="container flex-wrap justify-content-center align-items-center contenidoFormVentas">         
   
          <form action="" class="ancho">
            <div class="row gx-2 form-group">
              <div class="col-md mb-3 form-group">
                <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" id="nombre" 
                required>
              </div>
              <div class="invalid-feedback" id="errorNombre">
                <p>Ingrese su nombre</p>
              </div>
              <div class="col-md mb-3 form-group">
                <input type="text" class="form-control " placeholder="Apellido" aria-label="apellido"
                 id="apellido" required>
              </div>
              <div class="invalid-feedback" id="errorApellido">
                <p>Ingrese su Apellido</p>
              </div>
            </div>
            
            <div row>
              <div class=" col mb-3">
                <input type="email" class="form-control" placeholder="Email" aria-label="email" id="email"
                required>
              </div>
              <div class="invalid-feedback" id="errorEmail">
                <p>Ingrese su e-mail</p>

              </div>
            </div>
            <div class="row gx-2">
              <div class="col-md mb-3">
                <label for="cantidad" class="form-label">Cantidad</label>
                <input type="number" class="form-control" placeholder="Cantidad" aria-label="Cantidad"
                id="cantidad" min="1" required>
              </div>
              <div class="invalid-feedback" id="errorCantidad">
                <p>Ingrese cantidad de tickets</p>
              </div>

              <div class="col-md mb-3">
                <label for="categoria" class="form-label">Categoria</label>
                <select class="form-select" aria-label="Categoria" id="categoria">
                  <option value= ""selected>--Seleccione--</option>
                  <option value="0">Sin categoria</option>
                  <option value="1">Estudiante</option>
                  <option value="2">Trainee</option>
                  <option value="3">Junior</option>
                </select>
              </div>
              <div class="invalid-feedback" id="errorCategoria">
                <p>Ingrese una categoria</p>
              </div>

              <div class="alert alert-primary mt-2 mb-4" role="alert">
                Total a pagar: $ <span  id="totalPago" class="align-middle"></span>
              </div>
              <div class="row gx-2">
                <div class="col-md mb3 ">
                  <button type="reset" class="w-100 btn btn-lg btn-form botonesTickets" id="btnBorrar">Borrar</button>
                </div>
                <div class="col-md mb-3">
                  <button type="button" class="w-100 btn btn-lg btn-form botonesTickets" id="btnResumen">Resumen</button>
              </div>
             </div>

            </div>
          </form>
        </div>
    </section>
    
    <footer>
      <div class="footer text-center bg-light py-2">
        <div class="container">
            <div class="row justify-content-evenly align-items-center flex-wrap ">
                <a class= "col-6 col-md-2 my-1" href="./404.html">Preguntas Frecuentes</a>
                <a class= "col-6 col-md-2 my-1" href="./404.html">Prensa</a>
                <a class= "col-6 col-md-2 my-1" href="../index.html">Conferencias</a>
                <a class= "col-6 col-md-2 my-1" href="./404.html">Términos y condiciones</a>
                <a class= "col-6 col-md-2 my-1" href="./404.html">Privacidad</a>
                <a class= "col-6 col-md-2 my-1" href="./404.html">Estudiantes</a>
                <a class= "col-6 col-md-2 my-1" href="./404.html">Contáctanos</a>
            </div>
       
        </div>
      </div>
    </footer>
    <script src="./js/tickets.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
</body>
</html>