
void boton( String texto_, float x_, float y_, float diam_) {
 
 pushStyle(); 
 pushMatrix();
 
  translate(x_, y_);
  noStroke();
  fill(210,80,123);
  ellipse(0, 0, diam_, diam_);
  fill(255);
 
  textFont(font2);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(texto_, 0, 0);
  
 popStyle(); 
 popMatrix();

}

boolean boton1(float x_, float y_, float xSup, float ySup, float radio)  {
  
  float distancia = dist(x_, y_, xSup, ySup);
  
  if ( distancia < radio ){
  return true;
  }  else { return false; }
  
}
