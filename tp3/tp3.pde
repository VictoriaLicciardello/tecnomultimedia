// https://youtu.be/8v4DPXwu1fA

// Victoria Licciardello
// Ilusión óptica


int inicio, ax, col;


void setup () {
 size(400,400);
 
 

}


void draw () {
 

if ( inicio == 1 ) {
  
if (mouseX > 160 && mouseX < 240 && mouseY > 160 && mouseY < 240) {
  background(255);
} else { background(0); }
  
  
pushStyle();
for ( int i=0 ; i<20 ; i++ ) {
  

  
//Elipses que se mueven ////////////////////////////////////////////////////////
  stroke(random(255),random(255),col);
 ellipse(width/2,height/2, dist(i*height/20, mouseX, height, mouseY), 200); 
 ellipse(width/2,height/2, 200, dist(i*height/20, mouseX, height, mouseY)); 
 
//Elipses quieta centro ////////////////////////////////////////////////////////
 stroke(random(255),random(255),col);
ellipse(width/2,height/2, dist(i*height/20, 200, 200, 200), 200); 

} 
popStyle();

//Red que se abre //////////////////////////////////////////////////////////////
noFill();
for ( int x=0 ; x<20 ; x++ ) {
   strokeWeight(5); 
   noFill();
 ellipse(width/2,height/2, height, dist(x*height/20, mouseX, height, mouseY)); 
 ellipse(width/2,height/2, dist(x*height/20, mouseX, height, mouseY), height); 
}

}
//Pantalla inicio //////////////////////////////////////////////////////////////
 else {   textAlign(CENTER);
  background(0);
  text("aprieta una tecla para iniciar", 200, 350);
   }
  

if (ax == 1){
col = 255;
}
if (ax == 2){
col = 0;  
}
if (ax == 3){
col = 190;  
}
if (ax == 4){
col = 100;  
}



if (ax == 5) {
  
 inicio = 0; 
 ax = 0; 
}
  
println(ax);

}

void keyPressed() {
 
  inicio = 1;
  ax++;


}
  
