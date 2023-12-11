<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Trabajo Integrador Java</title>
    <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/estilos.css">
  </head>
  <style>
    .botonVerde{
        background: #96c93e;
        color: #fff !important;
    }
    .botonVerde:hover { background: #74aa17; }
  </style>
  <body>
  
  <!-- aca va el header.jsp -->
		 <jsp:include page="header.jsp"/>
		
     
     
    <main class="container-fluid justify-content-center" id="oradores">
        <h2 class="titulo">CONOCE A LOS<div class="tituloOradores"> ORADORES</div></h2>
      
        
        <section class="container flex-wrap align-items-center justify-content-center">
                    <div class="row conj">
                        <div class="col-md-4 tarjOrad">
                            <img class="imgOra" src="./assets/img/steve.jpg" alt="Steve Jobs, mostrando un teléfono">
                            <div class="contenido">
                                <h4 class="tituloAmarillo">JavaScript</h4>
                                <h4 class="tituloCeleste">React</h4>
                                <h3 class="orador">Steve Jobs</h3>
                                <p>Steven Paul Jobs, creador de productos revolucionarios de Apple, como el iPod, iPhone y iPad,
                                        nos trae las últimas novedades de Javascript y React, evolución de la tecnologia moderna. Imperdible!
                                </p>
                            </div>
                        </div>
                    
                
                        <div class="col-md-4 tarjOrad" >
                            <img class="imgOra" src="./assets/img/bill.jpg" alt="Bill Gates">
                            <div class="contenido">
                                <h4 class="tituloAmarillo">JavaScript</h4>
                                <h4 class="tituloCeleste">React</h4>
                                <h3 class="orador">Bill Gates</h3>
                                <p>Bill Gates tambien participa en otras disertaciones sobre javascrip y react que amplian
                                    el conocimiento y permiten continuar avanzando en tecnologia.  </p>
                            </div>
                        </div>
                    
                        <div class="col-md-4 tarjOrad">
                            <img class="imgOra" src="./assets/img/ada.jpeg" alt="Ada Lovelace">
                            <div class="contenido">
                                <h4 class="tituloGris">Negocios</h4>
                                <h4 class="tituloRojo">Startups</h4>
                                <h3 class="orador">Ada Lovelace</h3>
                                <p>Aqui encontramos charlas informativas sobre negocios y startups. 
                                Recomedable para personas emprendedoras y con ganas de aprender!
                                </p>
                            </div>
                        </div>
                    </div>
        </section>
        <section class="container mb-4 text-center" id="restoOradores">
		       <a class="btn btn-outline-success" href="<%=request.getContextPath()%>/FindAllOradorController">Conoce al resto de los ORADORES</a>
		
		    </section>
		


        <section class="container-fluid" id="lugarFecha">
            <div class="row lugarFecha">
                <div class="col-md-6 imgPlaya">
                    <img src="./assets/img/honolulu.jpg" class="w-100" alt="Foto de playa de la ciudad Honolulu, EE.UU">
                </div>
                <div class="col-md-6 lugar">
                    <h2>Bs As - Octubre</h2>
                    <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina. En los estados unidos, Honolulu es la 
                    más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área
                    urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-
                    condado consolidada que cubre toda la ciudad(aproximadamente 600km de superficie)
                    </p>
                    <div class="conoceMas">
                        <a href="https://www.tripadvisor.com.ar/Tourism-g60982-Honolulu_Oahu_Hawaii-Vacations.html" target="_blank">Conocé más</a>
                    </div>
                </div>
            </div>
        </section>


        <section class="form1" id="formularioOrador">
            <div class="formulario">
                <h2>CONVIÉRTETE EN UN<div class="tituloOrador">ORADOR</div></h2>
                <p>Anotate como Orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
            </div>
            <div class="contenidoForm">
                <form action="<%=request.getContextPath()%>/CreateOradorController" method="POST">
		                    <div class="row gx-2">
		                        <div class="col-md mb-3">
		                            <input type="text" class="form-control" name="nombre" placeholder="Nombre" aria-label="Nombre" required>
		                        </div>
		                        <div class="col-md mb-3">
		                            <input type="text" class="form-control" name="apellido" placeholder="Apellido" aria-label="Apellido" required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <input type="email" class="form-control" name="mail" placeholder="Email" aria-label="Email" required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <textarea class="form-control" name="tema" id="exampleFormControlTextarea1" rows="4"
		                                placeholder="Sobre que quieres hablar?" required></textarea>
		                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un titulo para tu charla.</div>
		                            <div class="d-grid">
		                                <button type="submit" class="botonVerde btn btn-lg btn-form">Enviar</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
            </div>
        </section>
        
    </main>
        
   <!-- aca va el footer.jsp -->
		 <jsp:include page="footer.jsp"/>
		 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="./js/tickets.js"></script>
   
</body>
</html>