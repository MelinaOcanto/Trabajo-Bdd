package ar.com.integrador.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;

@WebServlet("/DeleteOradorController")
public class DeleteOradorController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long id = Long.parseLong(req.getParameter("idOrador"));//viene como String -> Long.parseLong()

		//interface = new class que implementa la interface
		iOradorDAO dao = new OradorDAOMysqlImpl();
		
		//eliminar
		try {
			dao.delete(id);
			//mensaje de exito
			req.setAttribute("success", List.of("Se he eliminado el orador con id:" + id));
		} catch (Exception e) {
			e.printStackTrace();
			//mensaje de error
			req.setAttribute("erorrs", List.of("NO se he eliminado el orador :" + e.getMessage()));
		}//ctrl+t
		
		//ahora redirect!!!!
		getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
		
		
	}

}
