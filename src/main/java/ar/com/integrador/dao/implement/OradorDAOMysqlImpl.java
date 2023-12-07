package ar.com.integrador.dao.implement;
import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.db.AdministradorDeConexiones;
import ar.com.integrador.domain.Orador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class OradorDAOMysqlImpl implements iOradorDAO {
	@Override
	public Orador getById(Long id)  throws Exception{
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
		String sql = "select * from oradores where id_orador = " + id;
	   
		Statement statement  = connection.createStatement();
		
		//3 - obtengo el resulSet
		ResultSet resultset = statement.executeQuery(sql);
		// El resultset devuelve un registro de una tabla 
		
	     // primero verifico si hay datos 
		
		if (resultset.next()){
			// obtengo el dato del campo id
			Long idBd = resultset.getLong("id_orador");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");
			String mailBd = resultset.getString("mail");
			String temaBd = resultset.getString("tema");
			String activoBd = resultset.getString("activo");
			
			return new Orador(idBd,nombreBd,apellidoBd,mailBd,temaBd,activoBd);
			//*Orador(Long id_orador, String nombre, String apellido,String mail,String tema,String activo)*/
			
		}
		cerrar(connection);
		return null; // si no hay resultset entonces no devuelve nada
	}

	@Override
	public List<Orador> findAll() throws Exception {
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
	    String sql = "select * from oradores;";
			   
		Statement statement  = connection.createStatement();
				
		//3 - obtengo el resulSet
		ResultSet resultset = statement.executeQuery(sql);
		// El resultset devuelve un registro de una tabla 
				
	     // primero verifico si hay datos 
		    // creo una lista de Oradores
			List<Orador> oradores = new ArrayList<Orador>();	
			
			// mientras encontremos resultados de la base 
			while (resultset.next()){
			// obtengo el dato del campo id
			Long idBd = resultset.getLong("id_orador");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");
			String mailBd = resultset.getString("mail");
			String temaBd = resultset.getString("tema");
			String activoBd = resultset.getString("activo");
			// creamos un departamento y lo agregamos a la lista 
			Orador d = new Orador(idBd,nombreBd,apellidoBd,mailBd,temaBd,activoBd);
			oradores.add(d);
					
			}
			cerrar(connection);
		   // devolvemos departamentos		
		   return oradores; //
	}

	@Override
	public void delete(Long id) throws Exception { /* BAJA LOGICA*/
	   //-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
	     String sql = "DELETE FROM oradores WHERE id_orador=" + id;
		/*String sql = "update oradores set activo = 'N' WHERE id_orador=" + id;*/
	 	 Statement statement  = connection.createStatement();
	 	//3 -devuelve un entero devuelve 1 o 0, pero no hace falta confirmar para este caso 
		  statement.executeUpdate(sql);
		  cerrar(connection);
		 
	}
	@Override
	public void deleteOrador(Orador orador) throws Exception {
	    Connection connection = AdministradorDeConexiones.getConnection();
	    
	    // Primero, busca el orador basado en la información proporcionada (por ejemplo, el correo electrónico).
	    String sql = "SELECT id_orador FROM oradores WHERE mail = ?";
	    PreparedStatement searchStatement = connection.prepareStatement(sql);
	    searchStatement.setString(1, orador.getMail());

	    ResultSet resultset = searchStatement.executeQuery();
	    
	    if (resultset.next()) {
	        Long idBd = resultset.getLong("id_orador");

	        // Ahora que tienes el ID, puedes eliminar el orador por ID.
	        String deleteSql = "DELETE FROM oradores WHERE id_orador = ?";
	        PreparedStatement deleteStatement = connection.prepareStatement(deleteSql);
	        deleteStatement.setLong(1, idBd);
	        deleteStatement.executeUpdate();
	    }
	    
	    cerrar(connection);
	}

	@Override
	public void update(Orador orador) throws Exception {
		// creo un orador con los datos modificados del orador
		  
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
		 String sql = "update oradores set nombre = ?, apellido = ?, mail = ?, tema = ?, activo =? where id_orador= ?"  ;
		 PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
	     statement.setString(1,orador.getNombre());
		 statement.setString(2,orador.getApellido());
		 statement.setString(3,orador.getMail());
		 statement.setString(4,orador.getTema());
		 statement.setString(5,orador.getActivo());
		 statement.setLong(6,orador.getId());
		//3 -devuelve un entero devuelve 1 o 0, pero no hace falta confirmar para este caso 
		 statement.execute();
		
		 cerrar(connection);
	}

	@Override
	public void create(Orador newOrador) throws Exception {
		
        
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
		 String sql = "insert into oradores (nombre, apellido,mail, tema, activo) values (?,?,?,?,?)" ;
		 PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		 statement.setString(1,newOrador.getNombre());
		 statement.setString(2,newOrador.getApellido());
		 statement.setString(3,newOrador.getMail());
		 statement.setString(4,newOrador.getTema());
		 statement.setString(5,"S");
		//3 -devuelve un entero devuelve 1 o 0, pero no hace falta confirmar para este caso 
		 statement.execute();
		 
		 ResultSet res = statement.getGeneratedKeys(); // RETORNA LA KEY QUE SE GENERO
		 if (res.next()) {
			 System.out.println("Se creo el Orador correctamente");
		 }
		 cerrar(connection);
	}
	@Override
	public List<Orador> search(String clave) throws Exception {
		// 1 - necesito la Connection
		Connection connection = AdministradorDeConexiones.getConnection();

		// 2 - arma el statement
		String sql = "SELECT * FROM ORADORES WHERE TEMA LIKE ?";
		PreparedStatement statement = connection.prepareStatement(sql);

		//setear el valor que va en remplazo del ?
		statement.setString(1, "%" + clave + "%");
		
		// 3 - resultset
		ResultSet resultSet = statement.executeQuery();

		// Interface i = new ClaseQueImplementaLaInterface();
		List<Orador> orador = new ArrayList<Orador>();

		// verifico si hay datos
		while (resultSet.next()) {
			orador.add(this.crearOrador(resultSet));
		}
		
		cerrar(connection);
		
		return orador;
	}
	
	private void cerrar(Connection con) throws Exception{
		con.close();
	}
	
	private Orador crearOrador(ResultSet resultset) throws Exception {
		// obtengo el dato del campo id
		Long idBd = resultset.getLong("id_orador");
		String nombreBd = resultset.getString("nombre");
		String apellidoBd = resultset.getString("apellido");
		String mailBd = resultset.getString("mail");
		String temaBd = resultset.getString("tema");
		String activoBd = resultset.getString("activo");
		

		return new Orador(nombreBd,apellidoBd,mailBd,temaBd,activoBd);
	}
	
}