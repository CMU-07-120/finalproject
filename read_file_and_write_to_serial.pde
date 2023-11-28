import processing.serial.*;

// The serial port:
Serial myPort;


void setup()
{
  // List all the available serial ports:
  printArray(Serial.list());
  
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[3], 9600);


}

void draw() 
{
  
  String[] lines = loadStrings("commands.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) {
    println(lines[i]);
    myPort.write(lines[i]);
  }
  delay(5000);
}
