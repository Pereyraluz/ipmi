//Pereyra Luz
//legajo 92816/1
//Comisión 5
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage inicio;
PImage reinicio;
PFont texto;
int semuevaeltexto=0;
int segundos = 0;
int pantalla = 1;
int velocidad=1;
int tiempoPantalla=10;
int posx = 0;
int posy = 380;
int largo = 200;
int alto = 100;
int activo=0;
   
void setup ()
{
  size(640,480);
  background (0);
  fill(255);
  texto= loadFont ( "Arial-ItalicMT-48.vlw");
  textFont( texto,40);
  imagen1 = loadImage ("pantalla1.png");
  imagen2 = loadImage ("pantalla2.jpg");
  imagen3 = loadImage ("pantalla3.jpg");
  inicio = loadImage ("inicio.png");
  reinicio = loadImage ("reinicio.png");
}

void draw ()
{
   if (pantalla==1)
     { 
       image (imagen1, 0,0,640,480);
       text( "Gepetto, un carpintero, \ntalla un muñeco de madera \nllamado Pinocho \nque cobra vida \ngracias a un hada azul.", 0,semuevaeltexto-195 );
     }
     
   if (pantalla == 2) 
     {
       image (imagen2, 0,0,640,480);
       text( " Pinocho, travieso y desobediente,\nvive muchas aventuras y aprende  \nimportantes lecciones sobre la honestidad \ny la responsabilidad. ", 500-semuevaeltexto, 200);
     }
     
   if (pantalla == 3) 
     {
       image (imagen3, 0,0,640,480);
       text( "Al final, rescata a Gepetto \nde una ballena, demostrando \nvalentía y generosidad. \nComo recompensa, el hada \nlo convierte en un niño de verdad,\ny ambos viven felices juntos.",0,480-semuevaeltexto);
     }
     
   if (activo==1)
     {
       if (frameCount % velocidad == 0)
         {
            semuevaeltexto=semuevaeltexto+1;
         }
       
       if(frameCount % 60 == 0)
         {
            segundos = segundos + 1;
            if (segundos >tiempoPantalla)
               {
                 if (pantalla != 3) 
                   {
                      pantalla = pantalla + 1;
                      segundos=0;
                      semuevaeltexto=0;
                   }
               }
          }
       }
    
    if ((pantalla==1)&&(activo==0))
      {
        image (inicio, posx,posy,largo,alto);
      }
     
    if ((pantalla==3)&&(segundos>tiempoPantalla))
       {
         image (reinicio, posx,posy,largo,alto);
       }     
}

void mousePressed() 
{
    if ((mouseX>posx)&&(mouseX<posx+largo)&&(mouseY >posy) && (mouseY<posy+alto&& mousePressed))
      {
        if ((activo==1)&&(pantalla==3))
          {
            activo=0;
            pantalla=1;
            semuevaeltexto=0;
            segundos=0;
          }else 
          { 
            activo=1;
          }
       }
}
