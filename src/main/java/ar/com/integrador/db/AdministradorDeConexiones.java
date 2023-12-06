package ar.com.integrador.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdministradorDeConexiones {
	
	// vamos a crear un metodo estatico es decir que no vamos a crear un objeto para usar este metodo
	public static Connection getConnection() {
		String hosts = "localhost";  // 127.0.0.1
		String port = "3306";
		String password = "";
		String username = "root" ;
		String nombredb = "integrador_cac_";
		
		// driver de conexion a la base de datos
		String driveClassName = "com.mysql.cj.jdbc.Driver";
		// aplicamos manejo de excepciones que se ve en el curso avanzado
		Connection connection ;
		try {
			// com.mysql.cj.jdbc CONSTRUYE UNA CLASE A PARTIR DE UN OBJETO COMPILADO
			Class.forName(driveClassName);
			//url de conexion
			String url ="jdbc:mysql://"+hosts+":"+port+"/"+nombredb+"?serverTimeZone=UTC&useSSL=false";
			connection = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e){
			connection = null;
		}
		return connection;
	}
}