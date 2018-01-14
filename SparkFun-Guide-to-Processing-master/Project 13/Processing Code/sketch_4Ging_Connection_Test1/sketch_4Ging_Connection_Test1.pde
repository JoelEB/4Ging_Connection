import processing.serial.*;

Serial myPort;

int X_data = 0;        
int Z_data = 0;      

void setup() 
{
  size(700, 400);

  println(Serial.list());
  myPort = new Serial(this, Serial.list()[3], 115200);

//Generate a new serial event at new  line:
  myPort.bufferUntil('\n');  
}

void draw()
{
   println(X_data + "," + Z_data);
   
  background(150);  //Standard grey background

  stroke(0);  //Base level line color
  line(0, 300, width, 300);  //Base level line

  noStroke();  //Remove outline

  fill(255, 0, 0);  //Temp rectangle
  rect(100, 300, 100, -X_data);

  fill(0, 255, 0);    //Light rectangle
  rect(300, 300, 100, -Z_data);

  fill(0);    //black
  textAlign(CENTER);
  text("X_Data: "+X_data, 150, 325);
  text("Z_Data: "+Z_data, 350, 325);
}


void serialEvent(Serial myPort)
{
  String inString = myPort.readStringUntil('\n');

  if (inString != null) 
  {
    inString = trim(inString);
    int[] vals = int(split(inString, ","));

    if (vals.length >= 2) 
    {
      X_data = vals[0];
      Z_data = vals[1];//map(vals[1], 0, 1023, 0, 200);
    }
  }
}

