let respuesta = document.getElementById('answer'), qns=document= prompt('¿Cuál es su primer nombre?');
if (qns=='Choco') {
    respuesta.innerHTML="Bienvenido administrador: "+qns;
}else{
    respuesta.innerHTML= "Bienvenido visitante: "+qns;
}