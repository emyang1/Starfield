class Particle{
  double myX, myY, speed, angle;
  int myColor;
  Particle(){
    myX = width/2;
    myY = height/2;
    speed = Math.random()*8+1;
    angle = Math.random()*Math.PI*2;
    myColor = color((int)(Math.random()*256), 
    (int)(Math.random()*256), (int)(Math.random()*256));
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
    myX = width/2;
    myY = height/2;
    speed = Math.random()*10+1;
    angle = Math.random()*Math.PI*2;
    myColor = color((int)(Math.random()*256), 
    (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void draw(){
    
  }
}

Particle[] star;

void setup(){
  size(400, 400);
  noStroke();
  star = new Particle[300];
  for(int i = 0; i<star.length; i++){
    star[i] = new Particle();
  }
}
void draw(){
  background(0, 60);
  for(int i = 0; i<star.length; i++){
    star[i].show();
    star[i].move();
  }
}
