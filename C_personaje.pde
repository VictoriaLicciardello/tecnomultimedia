
class Personaje {
  float x, y, ancho, alto;
  float desp = 12;
  PImage img;

  Personaje() {
    img = loadImage("taetae.png");
    x = width;
    y = height;
    ancho = 90;
    alto = 90;
    //fuente = loadFont("....");
  }

  void draw_() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    imageMode(CENTER);
    
    image(img, -50, -50, ancho, alto);
    
    popStyle();
    popMatrix();

   if (keyPressed) {
      if (keyCode==LEFT) {
        x-=desp;
      } else if (keyCode==RIGHT) {
        x+=desp;
      }
      
      x = constrain(x,0,width);
      y = constrain(y,0,height);
      
      
    }
  }
}
