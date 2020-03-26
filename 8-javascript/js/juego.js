let play = document.getElementById('btn-play');
let credits = document.getElementById('btn-credits');
let volver = document.getElementById('btn-back');
let btnTryAgain = document.getElementById('btn-bc');
let btnTryAgain2 = document.getElementById('btn-bc2');
let screens = document.getElementsByClassName('screen');
let frog = document.getElementById('frog');
let cars = document.getElementsByClassName('car');
let smenu = document.getElementById('sound-menu');
let splay = document.getElementById('sound-play');
let lives = document.querySelectorAll('ul li.heart.active');


play.onmouseover = () => game.btnAddFx(play);
play.onmouseout = () =>game.btnRemoveFx(play);
play.onclick = () =>{ 
    game.screenTo(0, 1);
    game.activeSound();
  game.startGame();
}
btnTryAgain.onmouseover = () => game.btnAddFx(btnTryAgain);
btnTryAgain.onmouseout = () =>game.btnRemoveFx(btnTryAgain);
btnTryAgain.onclick = () =>{ 
    window.location ='08-juego.html';
}

btnTryAgain2.onmouseover = () => game.btnAddFx(btnTryAgain2);
btnTryAgain2.onmouseout = () =>game.btnRemoveFx(btnTryAgain2);
btnTryAgain2.onclick = () =>{ 
    window.location ='08-juego.html';
}

credits.onmouseover = () => game.btnAddFx(credits);
credits.onmouseout = () => game.btnRemoveFx(credits);
credits.onclick = () => game.screenTo(0, 2);
volver.onmouseover = () => game.btnAddFx(volver);
volver.onmouseout = () => game.btnRemoveFx(volver);
volver.onclick = () => game.screenTo(2, 0);

let game = {
    posLeft: 370,
    posTop: 480,
    level2: false,
    startGame: () => {
        game.moveFrog();
        game.renderCars();
        game.randomCar();
        
    },
    moveFrog:()=>{
        document.onkeydown = e => {
            frog.classList.add('animated','rubberBand');
            switch (e.keyCode) {
                case 37:
                    if (game.posLeft > 10) {
                        game.posLeft -= 60;
                        frog.style.left = game.posLeft + 'px';
                    }
                    break;
                case 39:
                    if (game.posLeft < 730) {
                        game.posLeft += 60;
                        frog.style.left = game.posLeft + 'px';
                    }

                    break;
                case 38:
                    // console.log(game.posTop);
                    
                    if (game.posTop > 0) {
                        game.posTop -= 60;
                        frog.style.top = game.posTop + 'px';
                        if(game.posTop==0){
                            setTimeout(()=>{
                                if(game.level2==false){
                                    screens[1].style.background= "url('imgs/game/level-2.png') no-repeat center";
                                    game.resetFrog();
                                    game.level2 = true;
                                }else{
                                    game.screenTo(1,4)
                                }
                            },200);
                        }
                    }
                    break;
                case 40:
                    if (game.posTop < 480) {
                        game.posTop += 60;
                        frog.style.top = game.posTop + 'px';
                    }
                    break;
                default:
                    console.log(e.keyCode);
                    break;
            }
            setTimeout(()=>frog.classList.remove('animated','rubberBand'),250);
        }
    },
    renderCars:()=>{
        for(let i =0; i<6; i++){
            let div =  document.createElement('div');
            div.classList.add('car');
            screens[1].appendChild(div);
        }
    },
    randomCar:()=>{ 

        let lt = -100;
        let tp = 480;
        let rt=0;
        let tm =70;
        let dr = 'r';

        for(let i=0; i<cars.length;i++){
            let random = Math.round(Math.random()*4);
            if(i==3){
                lt=810;
                tp-=60;
                rt=180;
                dr ='l';
            }
            tm-=10;
            tp-=60;
            cars[i].style.transform= 'rotate('+rt+'deg)';
            cars[i].style.top = tp+'px';
            cars[i].style.left = lt+'px';
            cars[i].classList.add(`car${random}`);
            game.moveCar(cars[i],tm,dr);
        }
      
    },
    moveCar:(element,time,direccion)=>{
        let posL = -100;
        let posR = 810;
        setInterval(()=>{
            game.checkCollides(element,frog);
            if(direccion === 'r'){
                if(posL < 810){
                    posL+=10;
                }else{
                    posL = -100;  
                    game.changeCar(element);
                }
                element.style.left = `${posL}px`;
            }else{
                if(posR > -100){
                    posR-=10;
                }else{
                    posR= 810;  
                    game.changeCar(element);
                }
                element.style.left = `${posR}px`;
            }
        },time);
    },
    changeCar: (element)=>{
        let random = Math.round(Math.random()*4);
        element.classList.remove('car0','car1','car2','car3','car4','car4');
        element.classList.add(`car${random}`);

    },
    screenTo: (start, final) => {
        screens[start].classList.remove('bounceInUp');
        screens[start].classList.add('bounceOutDown');
        setTimeout(() => {
            screens[start].classList.add('hide');
            screens[final].classList.remove('hide');
            screens[start].classList.remove('bounceOutDown');
            screens[final].classList.add('animated', 'bounceInUp')
        }, 800);
    },
    btnAddFx: elemento => elemento.classList.add('animated', 'tada', 'infinite'),
    btnRemoveFx: elemento => elemento.classList.remove('animated', 'tada', 'infinite'),
    activeSound: ()=>{
        smenu.pause();
        smenu.currentTime=0;
        splay.play();
    },
    checkCollides: (car, forg) => {
        cartop    = car.offsetTop;
        carleft   = car.offsetLeft;
        carright  = Number(car.offsetLeft) + Number(car.offsetWidth);
        carbottom = Number(car.offsetTop)  + Number(car.offsetHeight);

        forgtop    = forg.offsetTop;
        forgleft   = forg.offsetLeft;
        forgright  = Number(forg.offsetLeft) + Number(forg.offsetWidth);
        forgbottom = Number(forg.offsetTop)  + Number(forg.offsetHeight);

        if (carright  > forgleft && carleft   < forgright  && cartop    < forgbottom && carbottom > forgtop ) {
            game.checkLives();
            game.resetFrog();
            screens[1].classList.add('shake');
            screens[1].classList.remove('bounceInUp');
        }
    },
    resetFrog: ()=>{
        
        setTimeout(()=>screens[1].classList.remove('shake'),500);
        game.posLeft = 370;
        game.posTop = 480;
        frog.style.left = game.posLeft +'px';
        frog.style.top = game.posTop +'px';
    },
    checkLives: ()=>{
        lives[lives.length-1].classList.remove('active');
        lives = document.querySelectorAll('ul li.heart.active');
        if(lives.length<1){
            splay.pause();
            smenu.currentTime=0;
            smenu.play();
            smenu.currentTime=9999;
            game.screenTo(1,3);
        }
    }
}
