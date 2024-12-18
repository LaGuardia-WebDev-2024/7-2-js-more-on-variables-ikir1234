//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Varaible Declarations Go Here
var x = 200;
var y = 100;

//🟢Draw Procedure - Runs on Repeat
void draw(){
  background(255,255,255,200);

  //💡⬇️⬇️⬇️💡 Your Code For This Unit Goes Here
  
  noStroke();
  fill (randRed, randGreen, randBlue);; // a nice froggy green!

  ellipse(x, y, 200, 100); // face
  ellipse(x - 50, y - 50, 40, 40); // left eye socket
  ellipse(x + 50, y - 50, 40, 40); // right eye socket

  fill (225,225,225);; // for the whites of the eyes!
  ellipse(x - 50, y - 50, 30, 30); // left eyeball
  ellipse(x + 50, y - 50, 30, 30); // right eyeball
  fill(46,46,41)
  rect(x - 50,y - 50,10,10); //left pupil
  rect(x + 50,y - 50,10,10); //right pupil
  
  fill (240,90,126);
  stroke(46,46,41);
  strokeWeight(4)
  ellipse(x,y + 13,100,45); // mouth
  
  x = mouseX
  y = mouseY
}



//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

var randRed = random(0,255);
var randGreen = random(0,255);
var randBlue = random(0,255);

//🟡Mouse Pressed Procedue - Runs When Mouse is Pressed on Canvas
void mousePressed(){
  fill(fillR,fillG,fillB);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 12, 12);
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  text(myText, mouseX + 15, mouseY);
  console.log(myText);
  
  eyeSize = eyeSize + 1;
}

//🟡Key Pressed Procedure - Runs When Keyboard Key is Pressed
void keyPressed(){
  if(key == 'c' || key == 'C'){
    background(255,255,255,100);
  }

  if(key == 'r' || key == 'R'){
    fillR = random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    fillR = 0;
    fillG = random(100,255);
    fillB = 0;
  }
}

