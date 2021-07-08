int xpos = 0;
int ypos = 200;
int uzunluk = 100;
int score = 0;

int windowSizeX = 600;
int windowSizeY = 400;


int ball_x = int(random(windowSizeX-50));
int ball_y = int(random(windowSizeY-50));
static double speed = 10;

void setup() {
  size(600, 400);
  noCursor();
}

void draw() {
  clear();
  background(210);
  fill(0);
  ellipse(ball_x,ball_y,30,30);
   
  fill(255, 0, 0);
  ellipse(xpos, ypos, 50, 50);
  
  
  /*if (mousePressed){
    xpos=mouseX;
    ypos = mouseY;
  }*/
   if (keyPressed){
    if(keyCode == UP){
      ypos -= speed;
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos,ypos-i,50,50);
    }
 
  }
    if(keyCode == DOWN){
      ypos += speed;
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos,ypos+i,50,50);
    }
    
    }
    if(keyCode == RIGHT){
      xpos += speed;
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos -i,ypos,50,50);
    }
    
  }
    if(keyCode == LEFT){
      xpos -= speed;
      
      for(int i = 0; i <=uzunluk;i+= 10){
        ellipse(xpos +i,ypos,50,50);
      }
      
    }
  }
  
  /*if (abs(snakeX-pointX) < 5 ) 
if (abs(snakeY-pointY) < 5 ){
  

  if (dist(snakeX,snakeY,  pointX,pointY) < 5)
 } */
 
  if (ball_x-30<xpos && ball_x+30>xpos && ball_y-30<ypos && ball_y+30>ypos){
  score +=100;
  uzunluk += 10;
  ball_x = int(random(550));
  ball_y = int(random(350));
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
  println(score);
}
