

class BotonA {
  PFont font1, font2;
  int botonp;
  float x, y, diam;
  String texto; 
  

  BotonA( String texto_, float x_, float y_, float diam_) {
    
      
  font1 = loadFont("font1.vlw");
  font2 = loadFont("font2.vlw");
  
    texto = texto_;
    x = x_;
    y = y_;
    diam = diam_;
    
  }
  
  

//void dibujarBoton(String texto_, float x_, float y_, float diam_)
void dibujarBoton(){
 
 pushStyle(); 
 pushMatrix();
 
  translate(x, y);
  noStroke();
  fill(210,80,123);
  ellipse(0, 0, diam, diam);
  fill(255);
 
  textFont(font2);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(texto, 0, 0);
 
 popStyle(); 
 popMatrix();

}

 
        
  }
  
 

  


  
  
  
  
