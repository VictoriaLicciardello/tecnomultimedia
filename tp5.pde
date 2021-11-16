
// Victoria Licciardello
//Entrega individual


Juego juego;
boolean DEBUG = false;

void setup(){
  size(600,400);
  juego = new Juego();
}

void draw(){
  background(255);
  
  juego.actualizar(); 
  
  
}

void mousePressed(){
  juego.click();
}
