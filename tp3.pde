//Ignacio Sannazzaro
//Legajo 94034/5
//https://youtu.be/bzs7i2m1WNY

PImage inicio;
PImage opciones;
PImage muerte;
PImage finalmalo;
PImage finalbueno;
PImage creditos;
PImage[] fondos;
int imag = 10;

PFont fuente;

int pantalla = 1;

void setup() {
  size(600,600);
  
  fondos = new PImage[imag];
  
  inicio = loadImage("titulo.jpg");
  opciones = loadImage("opciones.jpg");
  muerte = loadImage("muerte.jpg");
  finalmalo = loadImage("finalmalo.jpg");
  finalbueno = loadImage("finalbueno.jpg");
  creditos = loadImage("creditos.jpg");
  imagen();
  background(1);
  fuente = createFont("arialBlack.ttf",20);
}

void draw(){
  
  if (pantalla == 1){
  image(inicio, 0, -100);
  inicio.resize(590,750);
  textFont(fuente);
  text("Pulsa W para continuar", 41,300);
  textSize(27);
  }
  
  else if (pantalla == 2){
  image(fondos[0], 0, 0);
  fondos[0].resize(600,600);
  textSize(15);
  texto();
  fill(255);
  text(" Fahrenheit 451 es una distopía que se desarrolla en un futuro donde los \n libros están prohibidos y son quemados por el gobierno, el protagonista, \n Guy Montag, es un bombero encargado de esta tarea",0,520);
  siguiente();
  }
  
  else if (pantalla == 3){
  image(opciones, 0, 0);
  opciones.resize(600,600);
  text("Decides no quemarlos",20,70);
  text("Decides quemar los \n libros",350,50);
  textSize(20);
  }
  
  else if (pantalla == 4){
  image(fondos[1], 0, 0);
  fondos[1].resize(600,600);
  texto();
  fill(255);
  textSize(30);
  text(" Al no quemarlos deciden matarte",20,550);
  siguiente();
  }
  
  if (pantalla == 5){
  image(muerte, 0, -100);
  muerte.resize(590,750);
  text("Pulsa R para reiniciar", 150,450);
  textSize(25);
  }
  
   else if (pantalla == 6){
  image(fondos[2], 0, 0);
  fondos[2].resize(600,600);
  texto();
  fill(255);
  textSize(23);
  text("Guy Montag comienza a cuestionar su labor ",20,550);
  siguiente();
  }
  
  else if (pantalla == 7){
  image(opciones, 0, 0);
  opciones.resize(600,600);
  text("Decides escapar",50,70);
  text("Decides seguir \nquemando libros",370,50);
  textSize(20);
  }
  
   else if (pantalla == 8){
  image(fondos[3], 0, 0);
  fondos[3].resize(600,600);
  texto();
  fill(255);
  textSize(23);
  text("El gobierno conmemora a Montag ",20,550);
  siguiente();
  }
  
  if (pantalla == 9){
  image(finalmalo, 0, 0);
  finalmalo.resize(600,600);
  text("Pulsa R para reiniciar", 50,450);
  text("Pulsa S para volver al punto de control",50,490);
  textSize(25);
  }
  
  else if (pantalla == 10){
  image(fondos[4], 0, 0);
  fondos[4].resize(600,600);
  texto();
  fill(255);
  textSize(15);
  text(" Montag se encuentra con Clarisse, una joven peculiar que lo lleva a \n reflexionar sobre la importancia de la lectura, el pensamiento crítico \n y la libertad de expresión",0,520);
  siguiente();
  }
  
  else if (pantalla == 11){
  image(fondos[5], 0, 0);
  fondos[5].resize(600,600);
  texto();
  fill(255);
  textSize(15);
  text(" Montag se encuentra con Clarisse, una joven peculiar que lo lleva a \n reflexionar sobre la importancia de la lectura, el pensamiento crítico \n y la libertad de expresión",0,520);
  siguiente();  
  }
  
  else if (pantalla == 12){
  image(opciones, 0, 0);
  opciones.resize(600,600);
  text("Montag decide rebelarse \ncontra el sistema y proteger \nlos libros",30,50);
  text("Montag decide volver a su \ntrabajo sin hacerle caso \na Clarisse",350,50);
  textSize(15);
  }
  
  else if (pantalla == 13){
  image(fondos[6], 0, -70);
  fondos[6].resize(600,600);
  fill(0);
  rect(0, 420,600, 200); 
  fill(255);
  textSize(15);
  text("Decides unirte a un grupo clandestino de personas llamadas hombres \nlibro, que se dedican a memorizar obras literarias para preservar su \ncontenido. En esta nueva vida clandestina, Montag descubre el poder \ntransformador de la literatura y se da cuenta de que la verdadera \nsabiduría se encuentra en los libros que antes quemaba. ",10,450);
  siguiente();
  }
  
  else if (pantalla == 14){
  image(fondos[7], 0, 0);
  fondos[7].resize(600,600);
  texto();
  fill(255);
  textSize(23);
  text("El gobierno conmemora a Montag ",20,550);
  siguiente();
  }
  
  if (pantalla == 15){
  image(finalmalo, 0, 0);
  finalmalo.resize(600,600);
  text("Pulsa R para reiniciar", 50,450);
  text("Pulsa S para volver al punto de control",50,490);
  textSize(25);
  }
  
  else if (pantalla == 16){
  image(opciones, 0, 0);
  opciones.resize(600,600);
  text("Montag decide esconderse y \nno luchar",30,50);
  text("Montag decide luchar \ncontra el gobierno",350,50);
  textSize(15);
  }
  
  else if (pantalla == 17){
  image(fondos[8], 0, 0);
  fondos[8].resize(600,600);
  texto();
  fill(255);
  textSize(23);
  text("Los encuentran y mueres ",20,550);
  siguiente();
  }
  
  if (pantalla == 18){
  image(finalmalo, 0, 0);
  finalmalo.resize(600,600);
  text("Pulsa R para reiniciar", 50,450);
  text("Pulsa S para volver al punto de control",50,490);
  textSize(25);
  }
  
  else if (pantalla == 19){
  image(fondos[9], 0, 0);
  fondos[9].resize(600,600);
  texto();
  fill(255);
  textSize(15);
  text("Montag decide luchar por la libertad intelectual y el derecho a leer ",20,550);
  siguiente();
  }
  
  if (pantalla == 20){
  image(finalbueno, 0, 0);
  finalbueno.resize(600,600);
  text("Logran terminar con el gobierno\n        Pulsa R para reiniciar\n        Pulsa C para los creditos", 90,180);
  textSize(25);
  }
  
  else if (pantalla == 21){
  image(creditos, 0, 0);
  creditos.resize(600,600);
  text("Comision N°3\nIgnacio Sannazzaro\nLegajo n° 94034/5", 10,500);
  textSize(25);
  }
}


void keyPressed() {
  if (key == 'c' || key == 'C') {
    if (pantalla == 20) {
      pantalla = 21;
    }
  }
  
  if (key == 'e' || key == 'E') {
    if (pantalla == 3) {
      pantalla = 6;
    }
    if (pantalla == 7) {
      pantalla = 8;
    }
    if (pantalla == 12) {
      pantalla = 14;
    }
    if (pantalla == 16) {
      pantalla = 19;
    }
  }
  
  if (key == 'q' || key == 'Q') {
    if (pantalla == 3) {
      pantalla = 4;
    }
    if (pantalla == 7) {
      pantalla = 10;
    }
    if (pantalla == 12) {
      pantalla = 13;
    }
    if (pantalla == 16) {
      pantalla = 17;
    }
  }
  
  if (key == 'w' || key == 'W') {
    if (pantalla == 1) {
      pantalla = 2;
    }
    if(pantalla == 2){
      pantalla = 3;
    }
    if(pantalla == 4){
      pantalla = 5;
    }
    if(pantalla == 6){
      pantalla = 7;
    }
    if(pantalla == 8){
      pantalla = 9;
    }
    if(pantalla == 10){
      pantalla = 11;
    }
    if(pantalla == 11){
      pantalla = 12;
    }
    if(pantalla == 14){
      pantalla = 15;
    }
    if(pantalla == 13){
      pantalla = 16;
    }
    if(pantalla == 17){
      pantalla = 18;
    }
    if(pantalla == 19){
      pantalla = 20;
    }
  }
  
 if (key == 'r' || key == 'R') {
    if (pantalla == 5) {
      pantalla = 1;
    }
    else if (pantalla == 9) {
      pantalla = 1;
    }
    else if (pantalla == 15) {
      pantalla = 1;
    }
    else if (pantalla == 18) {
      pantalla = 1;
    }
    else if (pantalla == 20) {
      pantalla = 1;
    }
  }
  
  if (key == 's' || key == 'S') {
    if (pantalla == 9) {
      pantalla = 6;
    }
    if (pantalla == 15) {
      pantalla = 11;
    }
    if (pantalla == 18) {
      pantalla = 13;
    }
  }
}
