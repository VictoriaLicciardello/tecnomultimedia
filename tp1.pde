void setup() {
  
  size(400,400);
  background(0);
 
}

void draw() {
 
  
  noStroke();
  
  
  
  fill(255,0,255); //magenta 1
  triangle(200,200,240,60,160,60);
 
  fill(255,0,125); //raspberry 2
  triangle(200,200,300,100,240,60);
  
  fill(255,0,0); //red 3
  triangle(200,200,300,100,340,170);

  fill(255,125,0); //orange 4
  triangle(200,200,340,170,340,240);
  
  fill(255,255,0); //yellow 5
  triangle(200,200,300,300,340,240);
  
  fill(125,255,0);//spring green 6
  triangle(200,200,300,300,240,340);
  
  fill(0,255,0); //green 7
  triangle(200,200,160,340,240,340);
  
  fill(0,255,125);//turquoise 8
  triangle(200,200,160,340,100,300);
  
  fill(0,255,255); //cyan 9
  triangle(200,200,100,300,60,230);
 
  fill(0,125,255); //ocean 10
  triangle(200,200,60,160,60,230);
  
  fill(0,0,255); //amarillo 11
  triangle(200,200,100,100,60,160);
  
  fill(125,0,255);//violet 12
  triangle(200,200,160,60,100,100);
  
  
  fill(0);
ellipse(200,200,190,190);


  fill(255);
  text("Magenta", 180,50); 
  
  text("Raspberry", 280,75);

  text("Red", 330,130); 

  text("Orange", 350,205); //medio
  
  text("Yellow", 330,280);
  
  text("Spring green", 280,330);
  
  text("Green", 185,358); //abajo
  
  
  
  //izq
  
  
  text("Turquoise", 75,330);
  
  text("Cyan", 40,280);
  
  text("Ocean", 20,205);
  
  text("Blue", 50,130);
  
  text("Violet", 79,75);
  
  
  
}
