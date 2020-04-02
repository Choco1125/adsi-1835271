let balotasAmarillas = document.getElementsByClassName('balotaAmarilla');
let balotaRoja = document.getElementsByClassName('balotaRoja');
let btnJugar = document.getElementById('bnt-jugar');



let baloto = {

    start(){
        baloto.mostarBalotasAmarrillas();
        baloto.mostarBalotaRoja();
    },
    genarRandom(min,max){
        return Math.floor(Math.random()*(max - min)) + min;
    },
    mostarBalotasAmarrillas(){
        let numeros = [];
        let tiempo = 2000;
        for(let i = 0; i<balotasAmarillas.length; i++){
            let balota = balotasAmarillas.item(i);
            let aleatorio = baloto.genarRandom(1,43);
            if(numeros.indexOf(aleatorio)==-1){
                numeros.push(aleatorio);
                balota.innerHTML = aleatorio;
                setTimeout(()=>{
                    balota.classList.remove('hiden');
                    balota.classList.add('entrar');
                },tiempo);
                tiempo+=2000;
            }else{
                i--;
            }
        }
    },
    mostarBalotaRoja(){
        balotaRoja[0].innerHTML = baloto.genarRandom(1,16);
        setTimeout(()=>{
            balotaRoja[0].classList.remove('hiden');
            balotaRoja[0].classList.add('entrar')
        },12000);
    }
}


btnJugar.addEventListener('click',()=>{
    btnJugar.classList.add('hide');
    baloto.start(); 
    setTimeout(()=>btnJugar.classList.remove('hide'),14000);
});

