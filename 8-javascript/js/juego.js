let play = document.getElementById('btn-play');
let credits = document.getElementById('btn-credits');

play.onmouseover=()=>play.classList.add('animated','tada', 'infinite');
credits.onmouseover=()=>credits.classList.add('animated','tada', 'infinite');
play.onmouseout=()=>play.classList.remove('animated','tada', 'infinite');
credits.onmouseout=()=>credits.classList.remove('animated','tada', 'infinite');