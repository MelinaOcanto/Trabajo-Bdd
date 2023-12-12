<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<%
 Orador orador = (Orador)request.getAttribute("orador"); // levanto el departamento que viene del controller
%>

<!doctype html>
<html lang="es">

	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <link rel="stylesheet" href="css/estilos-propios.css">
	  <link rel="shortcut icon" href="./img/codoacodo.png" type="image/x-icon">
	
	  <title>Trabajo Integrador Java</title>
	  <style>
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
		    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg">
		        <div class="container">
		            <a class="navbar-brand" href="index.jsp">
		                <img src="assets/img/codoacodo.png" alt="Codo a Codo logo">
		                Conf Bs As
		            </a>
		            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
		                aria-label="Toggle navigation">
		                <span class="navbar-toggler-icon"></span>
		            </button>
		            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
		                <ul class="navbar-nav mb-2 mb-lg-0">
		                    <li class="nav-item">
		                        <a class="nav-link active" aria-current="page" href="./index.jsp">La conferencia</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="./index.jsp#oradores">Los oradores</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="./index.jsp#lugar">El lugar y la fecha</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="./index.jsp#form-orador">Conviértete en orador</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link btn-compra-tickets" href="comprar-tickets.html">Comprar tickets</a>
		                    </li>
		                     <li class="nav-item">
                        		<a class="nav-link" href="login.jsp">LogIn</a>
                    		</li>
		                </ul>
		            </div>
		        </div>
		    </nav>
		</header>
		
		<main class="mb-5">
          <section class="container mt-5" id="form-orador">
		        <div class="row justify-content-center">
		            <div class="col-lg-8 col-xl-7">
		                <h2 class="titulo-gral">Modificar datos del Orador</h2>
		               
		                <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST">
		                    <div class="row gx-2">
		                        <div class="col-md mb-3">
		                            <input type="hidden" name="id" value="<%=orador.getId()%>">
		                            <input type="text" class="form-control" 
		                             name="nombre" 
		                             placeholder="Nombre" 
		                             aria-label="Nombre"
		                             id="validationCustom02"
		                             value="<%=orador.getNombre()%>" 
		                             required>
		                        </div>
		                        <div class="col-md mb-3">
		                            <input type="text" class="form-control" name="apellido" placeholder="Apellido" aria-label="Apellido"
		                             value="<%=orador.getApellido()%>" 
		                             required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <input type="email" class="form-control" name="mail" placeholder="Email" aria-label="Email"
		                            value="<%=orador.getMail()%>"  
		                            required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <textarea class="form-control" name="tema" id="exampleFormControlTextarea1" rows="4"
		                              
		                                placeholder="<%=orador.getTema()%>" 
		                                
		                                required><%=orador.getTema()%> </textarea>
		                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para tu charla.</div>
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-form">Modificar</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </section>
		
		</main>
		
		<footer id="main-footer">
		    <div class="container">
		        <ul class="nav justify-content-center justify-content-lg-between align-items-center">
		            <li class="nav-item">
		                <a class="nav-link" href="#">Preguntas <span>frecuentes</span></a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Cont�ctanos</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Prensa</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Conferencias</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">T�rminos y <span>condiciones</span></a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Privacidad</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Estudiantes</a>
		            </li>
		        </ul>
		    </div>
		</footer>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
	</body>
</html>