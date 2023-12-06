package ar.com.integrador.domain;


public class Orador {
	// atributos
	private Long id_orador;
	private String nombre;
	private String apellido;
	private String mail;
	private String tema;
	private String activo;
	
	// constructor de clase -- instanciar un objeto en memoria 
	public Orador(String nombre, String apellido,String mail,String tema,String activo) {
		/*this.id_orador = id_orador;*/
		// this, es una palabra reservada que hace referencia al objeto actual
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tema = tema;
		this.activo = activo;
	}
	// constructor de clase 
	public Orador(Long id_orador, String nombre, String apellido,String mail,String tema,String activo) {
		this.id_orador = id_orador;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tema = tema;
		this.activo = activo;
	}
    
	
	// methods getters y setters , method public retorna un Long DameId
	// getter = dame el atributo, tiene que retornar el valor del atributo, el tipo de dato del atributo
	//setter = guardar el atributo en memoria, no retorna nada, asi que en la firma del method se usa void, no se usa el return dentro, sino una asingacion
	public Long getId() {
		return this.id_orador;
	}
    
	public void setId(Long id_orador) {
		this.id_orador = id_orador;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public String getTema() {
		return this.tema;
	}

	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getActivo() {
		return this.activo;
	}

	public void setActivo(String activo) {
		this.activo = activo;
	}
	
    // sobreescribir methods que heredan de la clase padre, hereda de object 
	@Override
	public String toString() {
		return "Orador : nombre=" + nombre + ", apellido=" + apellido + ", mail=" + mail ;
	}
	
}