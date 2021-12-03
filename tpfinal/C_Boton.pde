
class Boton {
  //propiedades de la clase:
  float x, y, ancho, alto;  
  String label;

  //constructor:
  Boton( String label_, float x_, float y_, float ancho_, float alto_ ) {
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    label = label_;
  }

  //metodos o funciones:
  void actualizar() {
    dibujar();
  }

  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    if (mouseEstaEncima()) {
      fill(240, 80, 50);
    } else {
      fill(115, 100, 100);
    }
    stroke(255);
    strokeWeight(2);
    rectMode(CENTER);
    rect(0, 0, ancho, alto, 5);
    //ecribo la etiqueta:
    fill(0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text( label, 0, 0 );
    popStyle();
    popMatrix();

    if (DEBUG) {
      line(mouseX, mouseY, x, y);
    }
  }

  boolean mouseEstaEncima() {
    if ( mouseX > x-ancho/2 && mouseX < x+ancho/2 
      && mouseY > y-alto/2 && mouseY < y+alto/2 ) {
      return true;
    } else {
      return false;
    }
  }
}
