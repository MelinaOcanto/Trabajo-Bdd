<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
    <title>Trabajo Integrador Java</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/estilos.css">
 
	
	  <title>Trabajo Integrador</title>
		<style>
			.volver{
				border-radius: 5px;
                background-color: rgb(41, 167, 68);
				color:white;
				padding: 10px;
				
			}

			.volver a{
				text-decoration: none;
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
                        <a class="nav-link colorVerde" href="./tickets.jsp">Comprar Tickets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">LogIn</a>
                    </li>
                      
                  </ul>
                </div>
              </div>
            </nav> 


       
    </header>
	    
		 
		 <main>
			<section class="container mt-5 mb-4" id="restoOradores">
		        <h2 class="titulo-gral">Conoce todos los oradores que se presentan</h2>
		      
		        <div class="row">
		            <table class="table">
		                <thead>
		                  <tr>
		                    <th scope="col">#</th>
		                    <th scope="col">Nombre</th>
		                    <th scope="col">Apellido</th>
		                    <th scope="col">Tema</th>
		                  </tr>
		                </thead>
		                 <% 
						  	//codigo java
						  	//obtener el listado desde el request
						  	//se guardo bajo el nombre de "listado"
						  	List<Orador> listado = (List<Orador>)request.getAttribute("listado");
					 	 %>
						  <tbody>
							<% 
								// Verificar si la lista está vacía
								if (listado != null && !listado.isEmpty()) {
									// Si la lista no está vacía, mostrar los elementos
									for (Orador unOrador : listado) {
							%>
							<tr>
								<th scope="row"><%= unOrador.getId() %></th>
								<td><%= unOrador.getNombre() %></td>
								<td><%= unOrador.getApellido() %></td>
								<td><%= unOrador.getTema() %></td>
							</tr>
							<%
								}
								} else {
									// Si la lista está vacía, mostrar un mensaje
							%>
							<tr>
								<td colspan="4">No hay temas que coincidan.</td>
							</tr>
							<%
								}
							%>
						</tbody>

		              </table>
		        </div>

    	  </section>
		  <div class="d-flex justify-content-center align-items-center">
			<a class= "volver" btn404" href="javascript:history.back()">VOLVER</a>
		</div>
	
		
		</main>
		<footer>
        <div class="footer text-center bg-light py-2">
            <div class="container">
                <div class="row justify-content-evenly align-items-center flex-wrap ">
                    <a class= "col-6 col-md-2 my-1" href="./pages/404.html">Preguntas Frecuentes</a>
                    <a class= "col-6 col-md-2 my-1" href="./pages/404.html">Prensa</a>
                    <a class= "col-6 col-md-2 my-1" href="#conferencia">Conferencias</a>
                    <a class= "col-6 col-md-2 my-1" href="./pages/404.html">Terminos y condiciones</a>
                    <a class= "col-6 col-md-2 my-1" href="./pages/404.html">Privacidad</a>
                    <a class= "col-6 col-md-2 my-1" href="./pages/404.html">Estudiantes</a>
                    <a class= "col-6 col-md-2 my-1" href="./pages/404.html">Contactanos</a>
                </div>
           
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="./js/tickets.js"></script>
</body>
</html>
		
		