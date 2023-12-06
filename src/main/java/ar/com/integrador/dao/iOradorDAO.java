package ar.com.integrador.dao;
import ar.com.integrador.domain.Orador;
import java.util.List;

public interface iOradorDAO {
	 // en esta interface vamos a definir metodos de acceso a la tabla oradores
		// LAS INTERFACES POR SI SOLAS NO HACEN NADA, SOLO ES UNA ESTRUCTURA
		// SE DEBE IMPLEMENTAR EN UNA CLASE, ES DECIR EN UNA CLASE USAMOS ESTOS METODOS QUE DEFINIMOS ACA
		
		/*crud
		 getById()
		 find()
		 delete()
		 update()
		 create()*/
		
		// select * from oradores where id_orador = id;
		public Orador getById(Long id) throws Exception; // devuelve de un id todos los campos 
		
		// cambiamos el array por una lista de java 
		// select * from oradores;
		public List<Orador> findAll() throws Exception;	// devuelve todos los registros de la tabla Oradores
		
		
		// delete from oradores where id_orador = id;
		public void delete(Long id) throws Exception;// esto borra un registro por el id del oradores
		
		// delete from oradores where id_orador = id;pero primero buscador el orador si existe en la base por su mail y el id levantandolo de la base 
		public void deleteOrador(Orador orador) throws Exception;// esto borra un registro por el id del oradores
		
		
		//update oradores set nombre = nombre, apellido = apellido, mail = mail, tema = tema , activo = activo where id_orador = orador.id;
		public void update(Orador orador) throws Exception; // se le pasa un objeto 
		
		// insert to oradores (campo 1..campo2..campo3) values(newOrador.campo1....newOrador.campoN)
		public void create(Orador newOrador) throws Exception;
		
		//select * from oradores where tema like '%clave%' 
	    public List<Orador> search(String clave) throws Exception;
		
		// crear un method que consulte a la base por el nombre y que devuelva una lista de departamentos
		// crear un nuevo method que haga update solo al nombre o solo al presupuesto 
}
