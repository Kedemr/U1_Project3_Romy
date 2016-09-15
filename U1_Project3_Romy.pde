int circleX[];
int circleY[];
int circleR[];
int circleX1[];
int circleY1[];
int circleNumber = 50;
// #3305B2
void setup()
{
  fullScreen();
  circleX = new int[circleNumber];
  circleY = new int[circleNumber];
  circleR = new int[circleNumber];
  circleX1 = new int[circleNumber];
  circleY1 = new int[circleNumber];

  for (int i=0; i< circleNumber; i++)
  {

    circleX[i] = (int)random(0, width);
    circleY[i] = (int)random(0, height);
    circleR[i] = 100;

    circleX1[i] = (int)random(0, width);
    circleY1[i] = (int)random(0, width);
    colorMode(HSB);
  }
}

void draw()
{
  // background(#83ACFA);
   background(0);
  //fill(random(0, 500), random(0, 500), random(0, 500));
  for (int i=0; i< circleNumber; i++)
  {
    int directionX = (int)random(-1, 2);
    int directionY = (int)random(-1, 2);
    fill(#3F7FFA);
    ellipse(circleX[i], circleY[i], circleR[i], circleR[i]);
    circleX[i] = circleX[i] + (directionX*10);
    circleY[i] = circleY[i] + (directionY*10); 
    //
    fill(#3305B2);
    ellipse(circleX1[i], circleY1[i], circleR[i], circleR[i]);
    circleX1[i] = circleX1[i] + (directionX*10);
    circleY1[i] = circleY1[i] + (directionY*10); 
    if (circleX[i]>width)
    {
      circleX[i] = 0;
    }
    if (circleY[i]>height)
    {
      circleY[i]=0;
    }
    if (circleX1[i]>width)
    {
      circleX1[i] = 0;
    }
    if (circleY1[i]>height)
    {
      circleY1[i]=0;
    }
    if (mousePressed && dist(mouseX, mouseY, circleX[i], circleY[i]) <circleR[i])
    {
      circleX[i] = 0;
      circleY[i] = 0;
      circleR[i] = 0;
      ellipse(circleX[i], circleY[i], circleR[i], circleR[i]);
      circleX[i] = circleX[i] + 10 ;
      circleY[i] = circleY[i] + 10 ;
    }
  /*  if (dist(mouseX, mouseY, circleX1[i], circleY1[i]) <circleR[i]);
    {
      circleX1[i] = 0;
      circleY1[i] = 0;
      circleR[i] = 0;
      ellipse(circleX1[i], circleY1[i], circleR[i], circleR[i]);
      circleX1[i] = circleX[i] + 10;
      circleY1[i] = circleY[i] + 10;
    }*/
  }
}