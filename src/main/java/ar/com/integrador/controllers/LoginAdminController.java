package ar.com.integrador.controllers;


import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;

//un servelet es una clase que extiende de httpServlet
//http://localhost:8080/integrador//FindAllOradorController
@WebServlet("/LoginAdminController")

public class LoginAdminController  extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//capturo los parametros que viene en el request enviado por el form
		String nombre= req.getParameter("nombre");//name de input
		String password = req.getParameter("password");
	    String nombreGuardado = "admin";
		String passwordGuardado = "cac";
		if(nombre == null || "".equals(nombre)) {
			//ahora redirect!!!!
			getServletContext().getRequestDispatcher("/FindAllOradorController").forward(req, resp);
		}
		if( nombre.equals(nombreGuardado) && password.equals(passwordGuardado) ) {
			// si el user y la contraseña se validan y estan ok te deja entrar al dashboard
			getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
		}else {
			//ahora redirect!!!!
			getServletContext().getRequestDispatcher("/FindAllOradorController").forward(req, resp);
		}
		
		
		
	}
}