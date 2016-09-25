// Click on the circles to pop them

float circleX[];
float circleY[];
int circleR[];
float circleX1[];
float circleY1[];
int circleNumber = 40;
void setup()
{
  fullScreen();
  circleX = new float[circleNumber];
  circleY = new float[circleNumber];
  circleR = new int[circleNumber];
  circleX1 = new float[circleNumber];
  circleY1 = new float[circleNumber];

  for (int i=0; i< circleNumber; i++)
  {

    circleX[i] = (int)random(0, width);
    circleY[i] = (int)random(0, height);
    circleR[i] = 50;

    circleX1[i] = (int)random(0, width);
    circleY1[i] = (int)random(0, width);
    colorMode(HSB);
  }
}

void draw()
{
  background(#83ACFA);
  for (int i=0; i< circleNumber; i++)
  {
    float directionX = random(-1, 2);
    float directionY = random(-1, 2);
    fill(#3F7FFA);
    ellipse(circleX[i], circleY[i], circleR[i], circleR[i]);
    circleX[i] = circleX[i] + (directionX*5);
    circleY[i] = circleY[i] + (directionY*5); 
    circleX[i] = circleX[i] + (5);
    circleY[i] = circleY[i] + (5);

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