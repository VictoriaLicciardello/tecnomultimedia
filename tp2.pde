PImage yuna; 
PImage yeji;
PImage ryujin;
PImage chaer;
PImage lia;
PImage guess;
PImage jyp;

PFont mafia;
PFont han;


int sube = 0;
int baja = 500;

float text = 0;
float text2 = 0;

int opbaja, opbaja2;






void setup() {
size(500,400); 

  opbaja = 255;
  opbaja2 = 255;

  mafia = loadFont("mafia.vlw"); 
  han = loadFont("hangul3.vlw"); 

  
  yuna = loadImage("yuna.jpg");
  yeji = loadImage("yeji.jpg");
  ryujin = loadImage("ryujin.jpg");
  chaer = loadImage("chaeryeong.jpg");
  lia = loadImage("lia.jpg");
  guess = loadImage("guesswho.png");
  jyp = loadImage("jyp.png");

jyp.resize(500,400);
guess.resize(500,400);
}


void draw() {
background(0);


println(frameCount);  
sube++;
baja--;

/////////////////////TEXTO


 textAlign(CENTER);


 fill(255,0,0,opbaja);
 textFont(mafia); 
 textSize(80);
text("ITZY", baja, 200);
 textSize(60);
textFont(han); 
text("Ma.fi.a In The Morning", sube, 300);

 
fill(255); 
 
 
 if ( sube++ > 250) { sube = 250; }
 if ( baja-- < 250) { baja = 250; }
 
 if ( baja == 250) { opbaja--; }
 
 if ( opbaja < 0) {  
   opbaja2--;
    textAlign(CENTER);
   fill(255,255,255,opbaja2);
    textFont(mafia); 
   text("Dirigido por", 250, 200);
   textFont(han);
   text("J.Y.Park", 250, 300); 
 }
   
/////////////////////IMAGEN   
 

 textFont(mafia);  
     if (opbaja2 < 0) { 
 
      text++; 
      image(yuna,0,0);
      fill(255);
      textSize(50);
      text("YUNA", 250, text);  
  }  



     if (text > 100) { 
      
      image(yeji,0,0);
      fill(255);
      textSize(50);
      text("YEJI", 250, text);
  }
  
    if (text > 200) { 
      
      image(ryujin,0,0);
      fill(255);
      textSize(50);
      text("RYUJIN", 250, text);
  }
  
   if (text > 300) { 
      
      image(chaer,-20,-20);
      fill(255);
      textSize(50);
      text("CHAER", 250, text);
  }
  
   if (text > 400) { 
      
     lia.resize(600,400);
     image(lia, -50, 0);
      fill(255);
      textSize(50);
      text("LIA", 250, text);
      
  }
 
  if (text > 500) { 
image(guess,0,0);
  }
  
  if (text > 650) { 
image(jyp,0,0);
  }


textAlign(CENTER);

if (mouseY < height/2 && text > 500){
textSize(30);
fill(255);
text("?", mouseX, mouseY);}

if (mouseY > height/2 && text > 500) {
textSize(30);
fill(255);
text("GUE??WHO", mouseX, mouseY);}



}

void mousePressed() {

if (text > 700) { 
text = 0;  
}

}
