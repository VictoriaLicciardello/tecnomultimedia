// TP4 Victoria Licciardello
// Comisión 3

// Representación visual de una canción (the truth untold - bts)


import ddf.minim.*;
int pantalla = 0;

PImage pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla9, pantalla11, pantalla14, pantalla15, pantalla16, finalo, finalm;
PFont font1, font2;


Minim audio;
AudioPlayer player;



void setup() {
  size(600,600);
  
  pantalla1 = loadImage("pantalla1.png");
  pantalla2 = loadImage("pantalla2.png");
  pantalla3 = loadImage("pantalla3.png");
  pantalla4 = loadImage("pantalla4.png");
  pantalla5 = loadImage("pantalla5.png");
  pantalla6 = loadImage("pantalla6.png");
  pantalla7 = loadImage("pantalla7.png");
  
  pantalla9 = loadImage("pantalla9.png");
  
  pantalla11 = loadImage("pantalla11.png");
  
  pantalla14 = loadImage("pantalla14.png");
  pantalla15 = loadImage("pantalla15.png");
  pantalla16 = loadImage("pantalla16.png");
  
  finalo = loadImage("finalo.png");
  finalm = loadImage("finalm.png");
  
  font1 = loadFont("font1.vlw");
  font2 = loadFont("font2.vlw");
  
  audio = new Minim(this);
  player = audio.loadFile("audio.mp3");
  
  
}


void draw() {
 background(255);

textFont(font1);
textAlign(CENTER);
textSize(25);
fill(0);

if (pantalla == 0) {
 //the truth untold

 //IMAGEN
 textSize(35);
 text("La Flor Esmeralda", 300, 200);
 textSize(18);
 text("Letra por BTS", 300, 240);
 textSize(25);
 text("Haz click para comenzar", 300, 500);
}
  

else if (pantalla == 1) {
//lleno de soledad este jardin esta floreciendo // SIGUEINTE
textAlign(LEFT);
image(pantalla1, 0, 0);
text("Lleno de soledad", 40, 470);
text("Este jardín floreció", 40, 500);
text("Lleno de espinas...", 40, 530);
text("Me quedé en este castillo de arena", 40, 560);
 boton("siguiente", width/3 + 350, height/3 + 350, 60);
  
}

else if (pantalla == 2) {
//debería acercarme?...
image(pantalla2, 0, 0);

textAlign(LEFT);
text("¿Cuál será tu nombre?", 30, 440);
text("¿Tendrás a dónde ir?", 30, 470);
text("Te he visto en este jardín", 30, 500);

textAlign(CENTER);
 text("Debería acercarme?...", 300, 550);
 boton("No", width/3 + 350, height/3 + 350, 60);
 boton("Si", width/12, height/3 + 350, 60);
   
}

// RUTA SI //

else if ( pantalla == 13) {
 //me pongo la máscara y voy a verte
 textAlign(LEFT);  
  text("Se que no puedo mostrarme a ti", 50, 480);
  text("No puedo mostrarte una pare deteriorada de mi", 50, 510);   
  text("Asique uso esta máscara y voy a verte", 50, 540);   
}
else if ( pantalla == 14) {
 //interacción1
 image(pantalla14, 0 , 0);
}
else if ( pantalla == 15) {
 //interacción2
 image(pantalla15, 0 , 0);
}


/// RUTA NO ///

else if ( pantalla == 3) {
 //es mi destino
 image(pantalla3, 0, 0);
 textAlign(LEFT);
  text("No me sonrías", 50, 480);
  text("Porque no puedo acercarme a ti", 50, 510);   
  text("No hay un nombre por el que puedas llamarme", 50, 540);   
}

else if ( pantalla == 4) {
 //miradas
 image(pantalla4, 0, 0);
 textAlign(LEFT);
 text("No dejo de pensar en que talvez", 50, 540);
 text("Mi destino sea estar solo, pero...", 50, 570);
}

else if ( pantalla == 5) {
 //floreciendo en este jardín imagen flor
 image(pantalla5, 0, 0);
 
 textAlign(LEFT);
  text("Floreciendo en este jardín", 30, 80);
  text("Hay una flor que se parece a ti", 30, 110);   
  text("Quería dártela", 30, 520);
  text("Después de quitarme esta tonta máscara", 30, 550);
}

else if ( pantalla == 6) {
 //
 image(pantalla6, 0, 0);
 text("Debería hacerlo?...", 300, 550);
 boton("No", width/3 + 350, height/3 + 350, 60);
 boton("Si", width/12, height/3 + 350, 60);
 
}

// RUTA SI 2 //

else if ( pantalla == 16) {
 //en este jardin hago florecer
 image(pantalla16, 0, 0);
 
 textAlign(LEFT);
  text("En este jardín hago florecer", 50, 480);
  text("Una bonita flor que se parece a ti", 50, 510);   
  text("Y quiero dartela, porque eres mi respirar", 50, 540);   

}
else if ( pantalla == 17) {
 //talvez en ese momento
 textAlign(LEFT);
  text("Talvez en ese momento me diste fuerza", 50, 480);
  text("Asique puedo pararme frente a ti", 50, 510);   
  text("Y este castillo de arena se derrumba, junto a esta máscara", 50, 540);   
}    
else if ( pantalla == 18) {
///////GOOD ENDING VOLVER 
image(finalo, 0, 0);  
 text("Haz click para volver al inicio", 300, 580);    
}    

/// RUTA NO 2 ///

else if ( pantalla == 7) {
 //pero se ue nunca
 image(pantalla7, 0, 0);
 
 textAlign(LEFT);
  text("Se que nunca podría hacerlo", 50, 480);
  text("Debo esconerme", 50, 510);   
  text("Porque soy espantoso", 50, 540);          
}
else if ( pantalla == 8) {
 //se aleja con la flor
 textAlign(LEFT);
  text("El brillo que la flor desprendió en ese moemento", 50, 480);
  text("Tu también lo viste", 50, 510);   
  text("¿Por qué brillas tanto como ella?", 50, 540);          
    
}
else if ( pantalla == 9) {
 
 textAlign(LEFT);
 image(pantalla9, 0, 0);       
}
else if ( pantalla == 10) {
 //pedirle que se quede
 text("Debería acercarme ahora?...", 300, 550);
 boton("No", width/3 + 350, height/3 + 350, 60);
 boton("Si", width/12, height/3 + 350, 60);
 
}

/// RUTA NO 3 ///

else if ( pantalla == 11) {

 image(pantalla11, 0, 0);
 
textAlign(LEFT);  
  text("Todo desaparece", 50, 480);
  text("Y colapsa", 50, 510);   
  text("La unica cosa que puedo ver en este castillo de arena", 50, 540);
  text("Es una máscara rota", 50, 570);
 
}
else if ( pantalla == 12) {
 ////////bAD ENDING VOLVER  
 image(finalm, 0, 0);
 text("Haz click para volver al inicio", 300, 580);
}


/*
 fill(0);
 textAlign(LEFT);
 textSize(10);
 text("pantalla" + pantalla, 20, 20);
 */
}
