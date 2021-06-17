float speed = -6;
float x = 100;
float y = 700; //Y position
float dy;
float dx = 0;
float r1;
//Obstacles
float w;
float h;
float x1 = 1000 + random(100,300); //hiding place
float dx1 = -7;
float y1 = 750;; //Y position

float sqspeed = random (1,10);


float w2;
float h2;
float x2 = 1000 + random(100,750); //hiding place
float dx2 = -7;
float y2 = random(200,500); //Y position



float r=235;
float g=62;
float b=52;



void setup () {
  frameRate(100);
  size(1000,1000);
  
}

void keyPressed () {
if (key == ' ') {
dy = speed; //setup speed
}
}
void keyReleased () {
if (key == ' ') {
dy = -dy; //setup speed
}
}

//new functions

void squar (float x1,float y1, float w, float h, float sqspeed) {
rect (x1,y1,w,h,sqspeed);
}



void draw () {
background (255,255,255);
fill(31,180,255);
rect (0,0,1000,1000); //Setup sky

fill(66,7,9);
rect (0,725,1000,1000); //Setup ground

//Set up bicycle
fill(0,0,0);
cb (x,y);

//Setup Jummping
y = y + dy; //Jump



if (y >= 700) {dy = 0;}
}



//Setup obstacles



//Code bicycle
void c1 (float x,float y) {

strokeWeight(6);
stroke(0,0,0);
noFill();
circle(x,y,50);
strokeWeight(3);
line(x-25,y,x+25,y);
line(x,y-25,x,y+25);
line(x-17.68,y-17.68,x,y);
line(x+17.68,y+17.68,x,y);
line(x+17.68,y-17.68,x-17.68,y+17.68);

}

void fr (float x,float y) {
  
  strokeWeight (5);
  stroke(r,g,b);
line(x,y,x+25,y-37.5);
line(x+25,y-37.5,x+75.5,y-37.5);
line(x,y,x+55,y);
line(x+55,y,x+75.5,y-37.5);
line(x+75.5,y-37.5,x+100,y);
line(x+100,y,x+66,y-50);
circle(x+66,y-50,5);
rect(x+20,y-45.5,10,3);
circle(x+25,y-37.5,6);
circle(x+55,y,20);
line(x+55,y,x+25,y-37.5);


stroke(0,0,0);
strokeWeight(13);
line(x+20,y-45.5,x+50,y-25);
line(x+50,y-25,x+50,y);
strokeWeight(20);
line(x+20,y-45.5,x+30,y-85);
strokeWeight (10);
line(x+30,y-75,x+60,y-44);
stroke(0,0,0);
fill(0,0,0);

circle(x+38,y-100,10);
noStroke();
fill(0,0,0);
circle(x+20,y-45.5,25);
}
void cb (float x,float y) {

c1(x,y);
r1 = r1 + 0.1;
rotate (PI/r);
c1(x+100,y);
fr (x,y);

//Setup obstacles
x1 = x1 + dx1;
fill(255, 234, 46);
squar (x1,y1,w,h,sqspeed);

if (x1 + w <= 0) {
  
  x1=1100;
  w = random (100,500);
  h = -random(400);
 
}

squar (x2,y2,w2,h2,sqspeed);


}
