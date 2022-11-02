class Particle{
  double myX, myY, speed, angle;
  int myColor;
  Particle(){
    myX = width/2;
    myY = height/2;
    speed = Math.random()*5+1;
    angle = Math.random()*Math.PI*2;
    myColor = color((int)(Math.random()*50)+100, 
    (int)(Math.random()*256), (int)(Math.random()*100)+100);
  }
  void move(){
    myX = myX + Math.cos(angle)*speed;
    myY = myY + Math.sin(angle)*speed;
    if(myX > width || myY > height || myX < 0 || myY < 0){
      myX = width/2;
      myY = height/2;
    }
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 10.0, 10.0);
  }
}
class odd extends Particle{
  odd(){
    myX = Math.random()*350+25;
    myY = Math.random()*350+25;
    speed = Math.random()*5+1;
    angle = Math.random()*Math.PI*2;
    myColor = color(255, 196, 156);
  }
  void move(){
    myX = myX + (Math.random()*2)-1;
    myY = myY + Math.random()*2-1;
  }
  void show(){
    fill(255, 196, 156);
    triangle((float)myX-15, (float)myY-10, (float)myX+5, (float)myY-25, (float)myX+20, (float)myY-5);
    ellipse((float)myX, (float)myY, 60, 30);
    triangle((float)myX+25, (float)myY, (float)myX+40, (float)myY-15, (float)myX+40, (float)myY+15);
    fill(0);
    ellipse((float)myX-20, (float)myY, 7, 7);
  }
}

Particle[] star;
odd[] woo;

void setup(){
  size(400, 400);
  noStroke();
  star = new Particle[300];
  for(int i = 0; i<star.length; i++){
    star[i] = new odd();
  }
  for(int i = 5; i<star.length; i++){
    star[i] = new Particle();
  }
}
void draw(){
  fill(0, 30);
  rect(0, 0, 400, 400);
  for(int i = 0; i<star.length; i++){
    star[i].show();
    star[i].move();
  }
}

void mousePressed() {
  star = new Particle[300];
  for(int i = 0; i<star.length; i++){
    star[i] = new odd();
  }
  for(int i = 5; i<star.length; i++){
    star[i] = new Particle();
  }
}
