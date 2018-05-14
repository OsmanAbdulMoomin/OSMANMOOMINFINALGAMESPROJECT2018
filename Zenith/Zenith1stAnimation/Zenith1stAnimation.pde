void setup() {
  frameRate(10);
  size(3000, 2000, P3D);
}
int sideShift = 0;
int x = 0;
color fillclr = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
int alpha = 1, delta = 1; 
boolean fade; 

void draw() {

  color fillclr = color(int(random(225, 255)), int(random(225, 255)), int(random(225, 255)), alpha);
  color fillclr2 =color(int(random(225, 255)), int(random(225, 255)), int(random(225, 255))); 
  background(30);

  // ellipse


  for (int i = 0; i < 5; i++) {

    fill(fillclr2);
    beginShape();
    vertex(0, 2000);
    vertex(1000, 1000);
    vertex(900, 900);
    vertex(100, 2000);

    endShape();

    pushMatrix();
    noStroke();
    fill(fillclr);
    translate(int(random(0, 3000)), 0);
    box(int(random(150, 300)) + sideShift, int(random(1000, 2000)) + sideShift * 2 , int(random(0, 1000)));
    
    pushMatrix();
            translate(1400,1000, 0);
        sphere(1250);

    popMatrix();
    popMatrix();
    if(sideShift < 100){
    sideShift += i * 5;
    } else {
      sideShift -= i * 5;
    }
            translate(1400,1000, 0);
        sphere(1250);
        
    stroke(255);
    line(1000, 1000, 500, 2000, 1000, 0);
    line(1000, 1000, 500, 2000, 1000, 0);

    
    //  stroke()
  }

  //rect(100,0,300,2000);
  //rect(500,0,250,1500);
  //rect(100,0,300,3000);
  //rect(100,0,300,3000);

  beginShape(TRIANGLE_STRIP);
  vertex(30, 75);
  vertex(40, 20);
  vertex(50, 75);
  vertex(60, 20);
  vertex(70, 75);
  vertex(80, 20);
  vertex(90, 75);
  endShape();

  fill(200, 50, 100, alpha);
  ellipse(50, 50, 50, 50); 
  twinkle(); 

  println("cycle");

  if (x < 500) {
    line(x, 0, x, 100);
    x = x + 1;
  } else {
    noLoop();
  }
  // Saves each frame as line-000001.png, line-000002.png, etc.
  //saveFrame("line-######.png");
}

void twinkle() { //https://forum.processing.org/one/topic/fade-in-out-in-a-function.html
  //fade in and out
  if (alpha == 0 || alpha == 255) { 
    delta= -delta;
  } 
  alpha += delta;
} 