

void setup()
{
  fullScreen();

}

void draw()
{
  fill(0);
  textSize(32);
  text("Height: "+height, 100, 100);
  text("Width: "+ width, 100, 150);
  rect(645,1205,10,10);
}