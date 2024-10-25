exp[] allexp = new exp[200];

void setup() {
  size(400, 400);
  for (int i = 0; i < allexp.length; i++) {
    allexp[i] = new exp((int)(Math.random()*500), (int)(Math.random()*500), (float)(Math.random()+1));
  }
}

void draw() {

  background(0);
  for (int i = 0; i < allexp.length; i++) {
    allexp[i].move();
    allexp[i].show();
  }
}

class exp {

  float myX, myY, myYspeed;

  exp() {
    myX = width/2;
    myY = height/2;
    myYspeed = 1;
  }
  //overloaded constructor
  exp(float x, float y, float s) {
    myX = x;
    myY = y;
    myYspeed = s;
  }

  void show() {
    int diam = 0;
    float g = 0;
    noFill();
    while (diam < 20) {
      stroke(g/(int)(Math.random()*5), g+(int)(Math.random()*5), 0);
      ellipse(myX, myY, diam, diam);
      diam++;
      g+=255/20.0;
    }
  }

  void move() {
    myY += myYspeed;
    if (mouseX == myX && mouseY ==myY) {
      myX = (int)(Math.random()*400)-1;
      myY =(int)(Math.random()*400)-1;
    } 
    if (myY > height || mouseX == myX)
      myY = 0;
  }


}//end class
