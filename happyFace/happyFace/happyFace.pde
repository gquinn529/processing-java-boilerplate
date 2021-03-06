//Global Variables

//Declaration Only, due to size() keyvariables
int faceX;
int faceY;
int leftEyeX;
int leftEyeY;
int rightEyeX;
int rightEyeY;
int eyeDiameter;
float measlesX, measlesY, measlesDiamter;

//Declaration and Assignment
color purple = #990099;
color white = #FFFFFF;

void setup() {
  size(500, 600); //due to ratios, able to change this
  faceX = width/2;
  faceY= height/2;
  leftEyeX = width/4;
  leftEyeY = height/4;
  rightEyeX = width*3/4;
  rightEyeY = height/4;
  eyeDiameter = width/8;
  ellipse(faceX, faceY, width, width); //Face
  //line(x-point1, y-point1, x-point2, y-point2);
 
  strokeWeight(1);
  measlesDiamter = width*1/60; //Other measles varaibles need to be in draw()
  strokeWeight(1);
  buttonRectangles();
}

void draw() {
  
  //Arithmetic First
  measlesArithmetic();
  //Draw Measles
  drawMeasles();
  
  //Drawing Second
  
  fill(white); //White, resetts fill to default
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
   ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter); //Rigtht Eye
   strokeWeight(20); //big mouth
  line(width/4, height*3/4, width*3/4, height*3/4); //mouth
  strokeWeight(1);
  //triangle(x-point1, y-point1, x-point2, y-point2, x-point3, y-point3); 
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*2/3); //nose
  
  //More Face Parts required
}
