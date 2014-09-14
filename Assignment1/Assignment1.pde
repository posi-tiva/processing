//Assigment 1 - Valentina Buffone


//I was inspired by the landscape I enjoyed during my vacation. 
//The nature all around me and a bit of creative memories gave me the vision I handed down within my drawing.

size(600,400);
smooth();
background(#25206A);
stroke(#081631);
fill(#081631);
rect(0,0,600,200);
ellipseMode(CORNER);
fill(#F5D968);
stroke(#F5D968);  
ellipse(350, 50, 50, 50);  
ellipseMode(CORNER); 
stroke(#081631);
fill(#081631);  
ellipse(345, 40, 50, 50);  

stroke(#FCE04C);
strokeWeight(5);
point(190,170);
point(100,100);
strokeWeight(2);
point(120,20);
strokeWeight(3);
point(230,70);
strokeWeight(4);
point(450,90);
point(150,150);
point(10, 60);
point(560,170);
strokeWeight(2);
point(520,40);

fill(#6D9EB7);
noStroke();
triangle(340,220,390,217,330,229);
triangle(395,220,440,220,435,225);
triangle(280,280,340,275,360,280);

triangle(405,235,460,235,470,245);
triangle(405,255,460,255,450,265);
triangle(393,265,420,265,395,272);
triangle(378,278,415,278,380,285);

triangle(310,250,395,247,325,259);
triangle(340,235,400,232,390,240);
triangle(350,260,390,257,375,269);
triangle(280,280,340,275,360,280);
triangle(300,290,305,300,350,290);
triangle(360,300,395,305,385,310);

stroke(#ffffff);
noFill();
strokeWeight(0.3);

//rocks
stroke(#50273B);
strokeWeight(2);
fill(#050003);
quad(0,245,80,65,300,400,0,400);
//shadow
fill(#5D4252);
triangle(100,145,260,375,120,270);

fill(#050003);
triangle(160,400,230,150,300,400);
//shadow
fill(#5D4252);
triangle(230,190,280,380,230,280);
fill(#050003);
quad(270,400,310,340,350,320,400,400);
//shadow

fill(#5D4252);
triangle(320,345,345,335,365,360);


beginShape();
fill(#ffffff);
stroke(#ffffff);
vertex(460,120);
vertex(540,130);
vertex(490,150);
vertex(550,145);
vertex(490,165);

vertex(535, 175);
vertex(500,200);


vertex(530,175);
vertex(485,165);
vertex(545,145);
vertex(485,150);
vertex(535,130);
//vertex(465,125);
vertex(460,120);
endShape();

