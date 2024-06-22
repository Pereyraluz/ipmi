//https://youtu.be/Txc8XsSDecM
//Pereyra Luz
//legajo 92816/1
//Comisión 5

PImage cuadrados;
int cant=2;
int tam;
int fin;
int u,xx,yy;

void setup (){
   
  size( 800, 400);
   cuadrados = loadImage ("cuadrados.jpg");
   tam=(width/2)/cant;
   fin=width/8;
   u=0;
}

void draw() {
  image (cuadrados,0,0,400,400); 
  cuadrados(u);

}
 void mousePressed() 
 {
  xx=mouseX;
  yy=mouseY;
  u=ubicacion(xx,yy);
 }
 
