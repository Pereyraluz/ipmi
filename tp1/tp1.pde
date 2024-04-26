//tp1
//Luz Pereyra
//comision 5
//legajo 92816/1
PImage frutilla;

void setup(){
  size (800, 400);
  frutilla = loadImage ("frutilla2.png");
  
  }
    
void draw (){
    background (255);
   
    image (frutilla, 0, 0, 400, 400 );
     circle(mouseX, mouseY, 1);
     fill(255, 0, 0);
   noStroke();  

  circle( 595, 189, 240);
  circle( 572, 264, 160);
   circle( 556, 313, 100); 

quad(483, 227, 494, 278, 625, 323, 668, 284);
quad(497, 292, 509, 328, 590, 349, 620, 328);

 fill(255);
ellipse( 522, 130, 20, 30);
ellipse( 570, 170, 20, 30);
ellipse( 623, 184, 20, 30); 
ellipse( 674, 173, 20, 30);
ellipse( 520, 199, 20, 30);
ellipse( 581, 226, 20, 30);
ellipse( 646, 226, 20, 30);
ellipse( 537, 260, 20, 30);
ellipse( 608, 280, 20, 30);
ellipse( 560, 312, 20, 30);

fill(0,215, 0);
triangle(532, 65, 607, 51, 602, 88);
triangle( 560, 113, 598, 61, 624, 83);
triangle( 628, 137, 598, 79, 643, 76);
triangle( 677, 140, 620, 86, 651, 71);
triangle( 709, 100, 643, 85, 640, 60);

quad(607, 52, 640, 57, 650, 79, 593, 75);
quad(646, 21, 656, 34, 625, 88, 606, 75);
circle (653, 27, 19);
    
    
  }
