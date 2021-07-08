int xpos = 0;
int ypos = 200;
int uzunluk = 100;
static double speed = 10;

void setup() {
  size(600, 400);
  noCursor();
}

void draw() {
  clear();
  background(210);
 
  fill(255, 0, 0);
  ellipse(xpos, ypos, 50, 50);
  
  
  if (mousePressed){
    xpos=mouseX;
    ypos = mouseY;
  }
  else if (keyPressed){
    if(keyCode == UP){
      ypos -= speed;
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos,ypos-i,50,50);
        stroke(255,0,0);
    }
 
  }
    if(keyCode == DOWN){
      ypos += speed;
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos,ypos+i,50,50);
        stroke(255,0,0);
    }
    
    }
    if(keyCode == RIGHT){
      xpos += speed;
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos -i,ypos,50,50);
        stroke(255,0,0);
    }
    
  }
    if(keyCode == LEFT){
      xpos -= speed;
      
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos +i,ypos,50,50);
        stroke(255,0,0);
      }
      
    }
    else{
      
    
    }
  }
  
  
  if(xpos > 600){
    xpos = 0;
  }
  if(xpos < 0){
    xpos = 600;
  }
  if(ypos > 400){
    ypos = 0;
  }
  if(ypos < 0){
    ypos = 400;
  }

  speed += 0.00001;
  
}
