//validar primer formulario
/*let name1 = document.getElementById("name1");
let lastName = document.getElementById("last_name");
let comentario = document.getElementById("comentario")

const validar = () => {
    if (name1.value == ""){
        alert("Debes completar el campo Nombre")
        name1.focus();
        return;
    }

    if (lastName.value == ""){
        alert("Debes completar el campo Apellido")
        lastName.focus();
        return;
    }
    
    if(comentario.value == ""){
        alert("Debe ingresar un comentario")
        comentario.focus()
        return;
} 
}

enviar.addEventListener("click", validar);
*/











const valorBase = 200;

let descuentoEstudiante = 80;
let descuentoTrainee = 50;
let descuentoJunior = 15;



let nombre = document.getElementById("nombre");
let errorNombre = document.getElementById("errorNombre");
let apellido = document.getElementById("apellido");
let errorApellido = document.getElementById("errorApellido");
let email = document.getElementById("email");
let errorEmail = document.getElementById("errorEmail");
let cantidad = document.getElementById("cantidad");
let errorCantidad = document.getElementById("errorCantidad");
let categoria = document.getElementById("categoria") ;
let errorCategoria = document.getElementById("errorCategoria");


const quitarError = () => {
    let listaNodos = document.querySelectorAll(".form-control, .form-select");
    for(let i= 0; i < listaNodos.length; i ++){
        listaNodos[i].classList.remove("is-invalid");
    }
    let listaNodosDiv = document.querySelectorAll(".invalid-feedback");
    for(let i= 0; i < listaNodosDiv.length; i ++){
        listaNodosDiv[i].classList.remove("mostrar");
    }
}

//Esa funcion es usada para recorrer los input e ir validando, el primer for elimina todas clases
//is-invalid luego en el segundo for se elemina la clase mostrar 

const validarCampos = () => {

    quitarError();

    if (nombre.value === ""){
        nombre.classList.add("is-invalid");
        errorNombre.classList.add("mostrar");
        nombre.focus();
        return;
        
    }if (apellido.value=== ""){
        apellido.classList.add("is-invalid");
        errorApellido.classList.add("mostrar");
        apellido.focus();
        return;

    }if(email.value === ""){
        email.classList.add("is-invalid");
        errorEmail.classList.add("mostrar");
        email.focus();
        return;
    
    }
    const emailValido = mail =>{
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(mail);
    }
    if (!emailValido(email.value)){
        email.classList.add("is-invalid");
        errorEmail.classList.add("mostrar");
        email.focus();
        return;
    }

    if ((cantidad.value == 0) || (isNaN(cantidad.value))) {
        cantidad.classList.add("is-invalid");
        errorCantidad.classList.add("mostrar");
        cantidad.focus();
        return;
    }

    if(categoria.value == ""){
        categoria.classList.add("is-invalid");
        categoria.focus();
        return;
    }

//declaro una variable de tipo number

    let totalValorTickets = (cantidad.value) * valorBase;;

    switch(categoria.value){
        case "0":
            totalValorTickets = totalValorTickets;
            break;
        case "1":
            totalValorTickets = totalValorTickets - (descuentoEstudiante / 100 * totalValorTickets);
            break;
        case "2":
            totalValorTickets = totalValorTickets - (descuentoTrainee / 100 * totalValorTickets);
            break;
        case "3":
            totalValorTickets = totalValorTickets - (descuentoJunior / 100 * totalValorTickets);
            break;  
    }
    totalPago.innerHTML = totalValorTickets;
}



const resetValidarCampos =() =>{
    quitarError();
    totalPago.innerHTML = "";
}

btnBorrar.addEventListener("click", resetValidarCampos);
btnResumen.addEventListener("click", validarCampos);

