
class Enemigo2 {
  float x, y, ancho, alto;
  float desp1 = 3;
  PImage img;


  Enemigo2() {
    img = loadImage("mask.png");
    ancho = 50;
    alto = 40;
    sortearUbicacion();
  }

  void draw_() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    imageMode(CENTER);
 
    image(img, 0, -10, ancho, alto);

    popStyle();
    popMatrix();
   
    
      
       if ( y > height + 20 ) { sortearUbicacion(); }
   
      
    
  }

  void sortearUbicacion() {
    x = random(0,600);
    y = desp1;
  }
  
  //metodo para evaluar colison:
  boolean colision(float x_ , float y_ , float ancho_ , float alto_ ){
    if ( 
      x-ancho/2 < x_+ancho_/2 -50
      && x+ancho/2 > x_-ancho_/2 -50
      && y-alto/2 < y_+alto_/2 -50
      && y+alto/2 > y_-alto_/2 -50
    ) {
     //hay colision:
     sortearUbicacion();
     y = -50;
     return true;
    } else {
      y+=desp1;;
     return false; 
    }
 }
 
 
 
 
 
    boolean vidas(float ancho1_ , float alto1_) {
   
    if ( y == height) {return true;} else {return false;}
    
    
   }
 
      
}
