PImage backImage;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
PImage p7;
PImage p8;
PImage p9;
int time, score, psychoPosition,psychoX,psychoY;
boolean gameOver;

void setup(){
  fullScreen();
  backImage=loadImage("background.png");
  p1=loadImage("p1.png");
  p2=loadImage("p2.png");
  p3=loadImage("p3.png");
  p4=loadImage("p4.png");
  p5=loadImage("p5.png");
  p6=loadImage("p6.png");
  p7=loadImage("p7.png");
  p8=loadImage("p8.png");
  p9=loadImage("p9.png"); 
  time = 60; //intially time is 60
  score=0; //initially score is 0
  psychoPosition = (int)random(1,10);  // when game is started, psycho will appear on the screen randomly.
}

genericPsycho psycho = new genericPsycho(); // we created an instance from genericPsycho class and used that class' methods.
void draw(){ 
background(backImage);
psycho.create_Psycho(); //Psychos are created.
rect(0, 1000, width * 2, 150); // a rectangle behind the time and score.
psycho.time();
psycho.score();
psycho.gameOver();
}

void mousePressed()
{
  if(mouseX >= psychoX && mouseX <= psychoX + 150 && mouseY >= psychoY && mouseY <= psychoY + 150 && time > 0) //if the User hit the psycho 
  {
    score = score + 1; //score increases by 1
    if(time <= 60 ) // if the time less than 60, time is increased by 1
    {
      time = time + 1;
    }
    psychoPosition = (int)random(1,10); //After hitting psycho, its position will change
  }
}
