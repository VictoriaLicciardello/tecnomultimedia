
class Fondo {
  //propiedades:
  PImage imgFondo;



  //constructor:
  Fondo() {
    imgFondo = loadImage("fondo.png");
  
  }

  //funcionalidades:
  void draw_() {
    //dibujo:
    pushStyle();
   // tint(255, 127);
    imgFondo.resize(600,400);
    image(imgFondo, 0, 0, width, height );
    popStyle();
   
  }
}
