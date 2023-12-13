<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">

	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <link rel="stylesheet" href="./css/estilos.css">
	  <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
	  <title>Trabajo Integrador Java</title>
	  <style>
      .alto{
        height: 90px;
      }
        
        body{
		        height:100vh;
		        display: grid;
		        grid-template-rows: 10% 75% 15%;
		        grid-template-areas: "header"
		                             "main"
		                             "footer";  
		
		    }
		    header{
		        grid-area: header;
		    }
		    main{
		        grid-area: main;
		        overflow: auto;
		    }
		    footer{
		        grid-area: footer;
		      
		    }


		  </style>
	</head>
	<body>
	<header>
        <nav class="navbar navbar-expand-lg navbar-dark grisOscuro">
            <div class="container alto">
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
                      <a id="colorVerde"class="nav-link colorVerde" href="./tickets.jsp">Comprar Tickets</a>
                  </li>
                  <li class="nav-item">
                        <a class="nav-link" href="./login.jsp">LogIn</a>
                    </li>
                </ul>
              </div>
            </div>
          </nav> 
    </header> 
     <!-- aca va el footer.jsp -->
		 <jsp:include page="formularioLogin.jsp"/>
   
		 <!-- aca va el footer.jsp -->
		 <jsp:include page="footer.jsp"/>
		 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="./js/tickets.js"></script>
</body>
</html>