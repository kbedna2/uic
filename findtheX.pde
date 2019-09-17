int number;

ArrayList arrayX, arrayY;

float r;
float g;
float b;

float z;
boolean start = false;
color x = color(255, 255, 255);

void setup() {

  r = 0;
  g = 0;
  b = 0;
  arrayX = new ArrayList();
  arrayY = new ArrayList();
  size(600, 600);
  background(0);
}

void draw() {
  
  smooth();
  background(r, g, b);
  textSize(14);
  textAlign(CENTER);
  text("Click anywhere", width/2, height/2);
 
  for (int i =0; i<arrayX.size(); i++) {
    float tempX=(Float) arrayX.get(i);
    float tempY =(Float) arrayY.get(i);
    ellipse(tempX, tempY, 40, 40);
    //line(tempX,tempY,pmouseX, pmouseY);
}
  
  textAlign(CENTER);
  textSize(120);
  
  if(number >= 1){
  text(number, width/2, 200);
  }
  
  if (number==25) {
    textSize(15);
    text("find the little x", width/2, 500);
    println(mouseX,mouseY);
  }
  
  if (number>25) {
    textSize(100);
    text("You Lose", width/2, 500);
  }
  
     if (number>30) {
    textSize(40);
    text("Restart and SLOW DOWN", width/2, 400);
  }

{
  if (mouseX >347 && mouseX<353 && mouseY>494 && mouseY<503)
  {
    background(256);
    textSize(100);
    text("You Won", width/2, height/2);
    }
  }
}

void mousePressed()
{
  if (mouseX >286 && mouseX<349 && mouseY>294 && mouseY<301)
  {
    background(r, g, b);
    x = color(r, g, b);
    start = true;
    r = random(255);
    g = random(255);
    b = random(255);
}
  
  z = dist(0, 20, 0, 60);
  strokeWeight(z);
  stroke(random(255), random(255), random(255), random(255));
}

void mouseReleased() {
  if (start == true) {
    arrayX.add(new Float(mouseX));
    arrayY.add(new Float(mouseY));
  }
  number++;
}
