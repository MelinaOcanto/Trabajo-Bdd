package ar.com.integrador.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;
@WebServlet("/DashboardOradorController")
public class DashboardOradorController  extends HttpServlet {
	
	   @Override
			protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				//interface = new class que implementa la interface
			     iOradorDAO dao = new OradorDAOMysqlImpl();
			     List<Orador> oradores = new ArrayList<>();
					
			       try {
			    	 oradores = dao.findAll();
			       } catch (Exception e) {
			    	 // TODO Auto-generated catch block
			    	 e.printStackTrace(); //  muestra por consola el error 
			       }
			       req.setAttribute("listado", oradores);
			      // este bloque de codigo lo vamos a usar en todos lados, redirecciona
			       getServletContext().getRequestDispatcher("/dashboard.jsp").forward(req, resp);
				   //En resumen, la línea de código en cuestión redirige la solicitud actual 
			       //a un archivo JSP llamado "index.jsp", lo que significa que el control 
			       //se transferirá a ese archivo y se generará una respuesta basada 
			       //en el contenido del JSP. Esto permite separar la lógica 
			       //de presentación de la lógica de negocio en una aplicación web Java
			       //que sigue el patrón MVC.
			
			}
		    @Override
			protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				doGet(req, resp);
			}

}
