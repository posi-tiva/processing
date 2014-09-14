//My first drawing was a landscape with the moon and the stars. There was also the see, but the water was still! 
//I decided then, to animate it, and here it is my landscape is alive. 
//You can move the mouse up and down and you'll see the magic of the moon.
//If you move the mouse right and left istead, you'll see the magic of the rocks :)

color[] rainyday = {#31414D, #4A9AD4, #84AECC, #1B374D, #638299, #58E8FA};
color[] palette = rainyday;
float counter = 0;

void setup(){
  noStroke();
  size(1280, 720);
 
 background(palette[0]);
 int count=0;
}
  
void moon(float y){
  ellipseMode(CORNER);
  fill(#F4F2F5);
  stroke(#F5D968);  
  
  if (y/10>0){ellipse(760-y/20, 80-y/20, 50+y/10, 50+y/10);
  }else{
    ellipse(760, 80, 50, 50);
  }
    
  ellipseMode(CORNER); 

}

//rocks
void rocks(float x,float y){
   
   pushMatrix();
   
  stroke(#50273B);
  strokeWeight(2);
  
  //rock
  fill(#050003);
  quad(0+x/17,600,80+x/17,350,300+x/17,720,0+x/17,720);
  
  //shadow
  fill(40+y/10,30+y/5,9);
  triangle(120+x/17,450,260+x/17,725,120+x/17,520);
  
  //rock
  fill(#050003);
  triangle(160+x/23,720,230+x/23,350,400+x/23,720);
  
  //shadow
   fill(40+y/10,30+y/5,9);
  triangle(250+x/23,420,340+x/23,630,245+x/23,500);
  
  //rock
  fill(#050003);
  quad(320+x/40,720,390+x/40,580,450+x/40,530,570+x/40,720);
  
  //shadow
    fill(40+y/10,30+y/5,9);
    triangle(450+x/40,550,520+x/40,660,430+x/40,600);
    popMatrix();
  }
 void reflection(float y){
    while(counter < 270){
 
     noStroke();
    
     //Set stroke color to random palette color
     stroke(palette[int(random(1, 5))]);
     //Set stroke weight randomly
     strokeWeight(int(random(1, 5)));
     //Set fill color randomly from palette
     fill(palette[int(random(1, 5))]);
     
     
     //set ellipse origin location x to random of screen width
     float x2 = random(width/2+width/17-y/5,width/2+width/5+y/5);
     //set ellipse origin location x to random of screen height    
     float y2 = random(height/2-20,height);
     //set ellipse height and width randomly
     float d2 = random(10, 80);
     //draw ellipse 
     
     triangle(x2, y2,x2+random(-40,40),y2+random(-10,10),x2+random(-40,40),y2+random(-10,10));
    
     counter += 1;
     }
 
 }
 

void draw(){
  float parallax = mouseX -width/2;
  float parallaxy = mouseY -height/2;
  int m = millis();
  noStroke();
  ellipseMode(CORNER);
  noStroke();
  ellipseMode(CORNER);
  fill(0,35);
  rect(0,0,width,height);
    
  //night
   fill(0,1);
   rect(0,0,width,height);
  
  fill(255,random(190,255),random(39,253));
  ellipse(random(width),random(height/2),2,2);
  
  counter=0;

  
   while(counter < 150){
     fill(#000923,25);
     noStroke();
     rect(0,height/2-50,width,height);
     //Set stroke color to random palette color
     stroke(palette[int(random(1, 5))]);
     //Set stroke weight randomly
     strokeWeight(int(random(1, 10)));
     //Set fill color randomly from palette
     fill(palette[int(random(1, 5))]);
     
     
     //set ellipse origin location x to random of screen width
     float x = random(width);
     //set ellipse origin location x to random of screen height    
     float y = random(height/2,height);
     //set ellipse height and width randomly
     float d = random(10, 80);
     //draw ellipse 
     triangle(x, y,x+random(-40,40),y+random(-10,10),x+random(-40,40),y+random(-10,10));
     counter += 1;
   }

 rocks(parallax, parallaxy);
 moon(parallaxy);
 reflection(parallaxy);
 
}
