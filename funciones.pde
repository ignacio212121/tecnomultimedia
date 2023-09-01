void texto(){
  fill(0);
  rect(0, 500,600, 100); 
}

void siguiente(){
  textSize(15);
  text("Pulsa W para continuar", 400,590);
}

  void imagen(){
    for (int i=0; i<imag; i++) {
   fondos[i] = loadImage("img_" + nf(i, 9) + ".jpg");
  }
}
