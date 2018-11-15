color purple = #9933ff;
color blue = #00a3cc;
color regularButton = purple;
color hoverOverButton = blue;

void setup() {
  size(500, 600);
}

void draw() {
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (mouseX>width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) { //Hover Over
    fill(hoverOverButton);
    rect(width*15/16, height*0/16, width*1/16, height*1/16);
  } else {
    fill(regularButton);
    rect(width*15/16, height*0/16, width*1/16, height*1/16);
  }
  
}

//Listener
void mouseClicked () {
  if (mouseX>width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) {
    exit();
  }
  
}
