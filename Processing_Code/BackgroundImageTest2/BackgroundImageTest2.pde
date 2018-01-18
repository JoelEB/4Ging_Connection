import processing.serial.*;

Serial myPort;

float X_data = 255;        
float Z_data = 255; 

PImage ios;
PImage eyes;

void setup()
{
  fullScreen();
  imageMode(CORNER);
  
  ios = loadImage("ios.png");
  eyes = loadImage("eyes.png");
  
  noCursor();
  
  background(eyes);

 
  myPort = new Serial(this, Serial.list()[0], 115200);
  //Generate a new serial event at new  line:
  myPort.bufferUntil('\n');  
}

void draw()
{
image(eyes,0,0,width,height);
  tint(255,255,255,Z_data);
  image(ios,0,0,width,height);
}

void serialEvent(Serial myPort)
{
  String inString = myPort.readStringUntil('\n');

  if (inString != null) 
  {
    inString = trim(inString);
    float[] vals = float(split(inString, ","));

    if (vals.length >= 2) 
    {
      X_data = vals[0];
      Z_data = map(vals[1], 0, 240, 0, 255);//vals[1];//
    }
  }
}