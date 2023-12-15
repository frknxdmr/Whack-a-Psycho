class genericPsycho
{
int p_height=180;
int p_width=200;

void create_Psycho()
{
  if(time > 0)
  {
    fill(180 , 105 , 105);
    if(frameCount%80 == 0)
    {
      psychoPosition = (int)random(1,10);
    }
    if(psychoPosition == 1)
    {
      psychoX = 320;
      psychoY = 17;
      image(p1,320,17,p_width,p_height); //image(p1,x-cor,y-cor,width,height
    }
     if(psychoPosition == 2)
    {
      psychoX = 885;
      psychoY = 20;
     image(p2,885,20,p_width,p_height); //image(p2,x-cor,y-cor,width,height)  
    }
     if(psychoPosition == 3)
    {
      psychoX = 1520;
      psychoY = 17;
      image(p3,1520,17,p_width,p_height);
    }
     if(psychoPosition == 4)
    {
      psychoX = 300;
      psychoY = 300;
      image(p4,300,300,200,220);
    }
     if(psychoPosition == 5)
    {
      psychoX = 880;
      psychoY = 305;
     image(p5,880,305,p_width,180);
    }
     if(psychoPosition == 6)
    {
      psychoX = 1525;
      psychoY = 305;
      image(p6,1525,305,p_width,p_height);
    }
     if(psychoPosition == 7)
    {
      psychoX = 300;
      psychoY = 630;
      image(p7,300,630,p_width,p_height);
    }
     if(psychoPosition == 8)
    {
      psychoX = 855;
      psychoY = 630;
      image(p8,855,630,p_width,p_height);
    }
     if(psychoPosition == 9)
    {
      psychoX = 1525;
      psychoY = 630;
      image(p9,1525,630,p_width,p_height);
    }   
  }
}

public void time()
{
  textAlign(CENTER);
  textSize(50);
  fill(0);
  if(time > 0 && frameCount%60 == 0) //framecount must be 60 for time
  {
    time +=  - 1;   
  }
  text("Time: "+time,650,1053);
}

void score()
{
  fill(0);
  textSize(50);
  text("Score: "+score,1200,1053);
}

void gameOver()
{
  if(time == 0)
  {
    fill(255,0,0);
    textSize(50);
    text("Game Over \n Press any key to restart game", width/2,height/2);
    if(keyPressed) // if a random key pressed
    {
      setup();   // setup function will start this means that the game will restart.
    }
  }
}

}
