void mousePressed() {
  
  
  if (pantalla == 0) {
 //the truth untold
    if ( mousePressed ) { pantalla = 1; }
    player.play();
}
  

  if (pantalla == 1) {
    
//lleno de soledad este jardin esta floreciendo // SIGUEINTE
    if (boton1(mouseX, mouseY, width/3 + 350, height/3 + 350, 30)) { pantalla = 2; }
    
}


else if (pantalla == 2) {

//debería acercarme?...
  //SI
    if(boton1(mouseX, mouseY, width/12, height/3 + 350, 30)) { pantalla = 13; }
  //NO
    if(boton1(mouseX, mouseY, width/3 + 350, height/3 + 350, 30)) { pantalla = 3; }
   
}

// RUTA SI //

else if ( pantalla == 13) {
 //me pongo la máscara y voy a verte
    if( mousePressed ) { pantalla = 14; } 
}
else if ( pantalla == 14) {
 //interacción1
    if( mousePressed ) { pantalla = 15; } 
}
else if ( pantalla == 15) {
 //interacción2
    if( mousePressed ) { pantalla = 5; } 
}


/// RUTA NO ///

else if ( pantalla == 3) {
 //es mi destino
    if( mousePressed ) { pantalla = 4; }     
}

else if ( pantalla == 4) {
 //miradas
    if( mousePressed ) { pantalla = 5; }     
}

else if ( pantalla == 5) {
 //floreciendo en este jardín
    if( mousePressed ) { pantalla = 6; }     
}

else if ( pantalla == 6) {
  
 //debería hacerlo?...
 //SI
    if(boton1(mouseX, mouseY, width/12, height/3 + 350, 30)) { pantalla = 16; }
  //NO
    if(boton1(mouseX, mouseY, width/3 + 350, height/3 + 350, 30)) { pantalla = 7; }
 
}

// RUTA SI 2 //

else if ( pantalla == 16) {
 //en este jardin hago florecer
    if( mousePressed ) { pantalla = 17; }     
}   
else if ( pantalla == 17) {
 //talvez en ese momento
    if( mousePressed ) { pantalla = 18; }     
}    
else if ( pantalla == 18) {
///////GOOD ENDING VOLVER    
if( mousePressed ) { pantalla = 0; }
}    

/// RUTA NO 2 ///

else if ( pantalla == 7) {
 //pero se ue nunca
    if( mousePressed ) { pantalla = 8; }     
}
else if ( pantalla == 8) {
 //se aleja con la flor
    if( mousePressed ) { pantalla = 9; }     
}
else if ( pantalla == 9) {
 //la ve alejarse
    if( mousePressed ) { pantalla = 10; }     
}
else if ( pantalla == 10) {
 //pedirle que se quede
   //SI
    if(boton1(mouseX, mouseY, width/12, height/3 + 350, 30)) { pantalla = 17; }
   //NO
    if(boton1(mouseX, mouseY, width/3 + 350, height/3 + 350, 30)) { pantalla = 11; }    
}

/// RUTA NO 3 ///

else if ( pantalla == 11) {
 //estoy llorando
    if( mousePressed ) { pantalla = 12; }     
}
else if ( pantalla == 12) {
 ////////bAD ENDING VOLVER   
 if( mousePressed ) { pantalla = 0; }
}

}
