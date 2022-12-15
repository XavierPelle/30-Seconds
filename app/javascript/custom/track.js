console.log("track Program")

var playy = document.getElementById("play");
  
let playngg = function(){

var element = document.getElementById("inputpart");

let tabb = element.textContent

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

playy.addEventListener('click', playngg);
