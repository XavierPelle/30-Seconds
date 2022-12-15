console.log("feed program")

var play = document.getElementsByClassName("play");
  
let playng = function(){

var parent = this.parentNode;
var element = parent.getElementsByClassName("input");
let tabb = element[0].textContent

console.log(tabb)

let tab = tabb.split(',');

tab.forEach( a =>{ 

})

  tab.forEach((a, i) => {
    setTimeout(() => {

      const audio = document.querySelector(`audio[data-key="${a}"]`);

      if (!audio) return;

      audio.currentTime = 0;
      audio.play();
        }, i * 10);
  });


}

for (var i = 0; i < play.length; i++) {
play[i].addEventListener('click', playng);
}
