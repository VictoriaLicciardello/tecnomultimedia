

// Victoria Licciardello, comisión 3
//Entrega individual
//Link al video https://youtu.be/bp_GltFpK3M

import ddf.minim.*;

Juego juego;
Minim audio;
AudioPlayer player;
Aventura aventura;





boolean DEBUG = false;

void setup(){
  size(600,600);
  juego = new Juego();
  aventura = new Aventura();
  audio = new Minim(this);
  player = audio.loadFile("audio.mp3");
  
}

void draw(){
  background(255);
  aventura.draw_();
  
  
}

void mousePressed(){
  juego.click();
  aventura.mousePressed_(); 

}
