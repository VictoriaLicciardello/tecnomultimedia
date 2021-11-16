
class Juego {
  
  //propiedades 
  Fondo fondo;
  Boton boton1, boton2, boton3, boton4;
  String estadoJuego;


  Enemigo[] enemigo;
  Enemigo2[] enemigo2;
  int cantEnemigos, cantEnemigos2;
  Personaje personaje;
  int puntos=0;
  int vidas=3;
 

  //constructor 
  Juego() {
   fondo = new Fondo();
     estadoJuego = "inicio";
    boton1 = new Boton( "EMPEZAR", width/2, height/2, 300, 100 );
    boton3 = new Boton( "VOLVER", width/2, height-60, 300, 100 );
    boton4 = new Boton( "Perdiste", width/2, height/2, 200, 200 );
    
    cantEnemigos = 3;
    enemigo = new Enemigo[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++ ) {
      enemigo[i] = new Enemigo();
    }
    
    cantEnemigos2 = 1;
    enemigo2 = new Enemigo2[cantEnemigos2];
    for (int i=0; i<cantEnemigos2; i++ ) {
      enemigo2[i] = new Enemigo2();
    }
    
    personaje = new Personaje();
  }

  //
  void draw_() {
   
  fondo.draw_();
  pushStyle();  
  textAlign(LEFT);
  fill(0);  
  textSize(20);    
  text(puntos, 80, 30);  
  text("puntos", 15, 30);  
  text(vidas, 80, 60);
  text("vidas", 15, 60);  
  popStyle();
  
    for (int i=0; i<cantEnemigos; i++ ) {
      enemigo[i].draw_();
      

      //evaluo colision:
      if ( enemigo[i].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto) ) {
        puntos++;
        println( puntos );
      } 
     else if ( enemigo[i].vidas(height, height) ) { vidas-= 1; }
     
    }
    for (int i=0; i<cantEnemigos2; i++ ) {
     
      enemigo2[i].draw_();
     
     if ( enemigo2[i].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto) ) {
        puntos--;
        vidas-= 1;
        println( puntos );
     }
 }

       
  
    personaje.draw_();
  
  }
  
  


//metodos:
  void actualizar() {
    if ( estadoJuego.equals("inicio")) {
      boton1.actualizar();

    } if (estadoJuego.equals("jugando")) {
      //mostrar lo que corresponde a jugar:
      text("JUGANDO", width/2, height/2);
      juego.draw_();
        if (vidas < 1) { cambiarEstado("pierdo"); }
    }  else if (estadoJuego.equals("pierdo")) {
      pushStyle();
      textAlign(CENTER);
      fill(0);
      text("Perdiste", width/2, height/2);
      popStyle();
      boton3.actualizar();
    }
  
  }

  void click() {
    if ( estadoJuego.equals("inicio")) {
      if ( boton1.mouseEstaEncima() ) {
        cambiarEstado("jugando");
      }
    } else if (estadoJuego.equals("jugando")) {
      //mostrar lo que corresponde a jugar:
      if ( vidas < 0) {
        cambiarEstado("pierdo");
      }
    } else if (estadoJuego.equals("pierdo")) {
      //mostrar lo que corresponde a creditos:
      if ( boton3.mouseEstaEncima() ) {
        cambiarEstado ("inicio");
      }
    }
  }

  //metodos para ejecutar los cambios de estados:
  void cambiarEstado( String nuevoEstado_  ) {
    estadoJuego = nuevoEstado_;
    if (nuevoEstado_.equals("inicio") ) {
      //pongo en cero lo valores de inicio
       puntos=0;
       vidas=3;
    } else if (nuevoEstado_.equals("jugando") ) {
      //pongo en cero lo valores de inicio
    }
  }
}
