void efectouno()
{
    int k=0;
    for (int x=0; x< fin; x=x+5)
      {
         pushMatrix();
         translate(500 ,100);
         rotate(radians(frameCount));
         if (k % 2 == 0)
           {
             fill(231, 9, 0);
             rect (-100+x,-100+x,tam-2*x,tam-2*x);
            }else
                {if (k<10)
                {
                 fill(234, 116, 251);
                 rect (-100+x,-100+x,tam-2*x,tam-2*x);
                }else
                     {
                      fill(80, 238, 251);
                      rect (-100+x,-100+x,tam-2*x,tam-2*x);
                      }
                }
                 popMatrix();
                 k=k+1; 
      }
}

void efectodos()
{   
      float k=random(0,4);
      for (int x=0; x< fin; x=x+5)
                {
                  if (k < 2)
                    {
                      fill(231, 9, 0);
                      rect (600+x,0+x,tam-2*x,tam-2*x);
                    }else
                    {if (k<3)
                      {
                        fill(249, 232, 3);
                        rect (600+x,0+x,tam-2*x,tam-2*x);
                      }else
                        {
                        fill(187, 153, 251);
                        rect (600+x,0+x,tam-2*x,tam-2*x);
                        }
                    }
                    
                k=random(0,4);
                
                }
                 fill(231, 9, 0);
                 rect (698,98,4,4);
            }
            
            
void efectotres()            
            
            {int k=0;
             float mx= map(mouseX,0,width, 0, 255);
             float my= map(mouseY,0,height,0,255);
              for (int x=0; x< fin; x=x+5)
                {
                  if (k % 2 == 0)
                    {
                      fill(mx, my, 125);
                      rect (400+x,200+x,tam-2*x,tam-2*x);
                    }else
                    {if (k<10)
                      {
                        fill(mx, 0, my);
                        rect (400+x,200+x,tam-2*x,tam-2*x);
                      }else
                        {
                        fill(my,255, mx);
                        rect (400+x,200+x,tam-2*x,tam-2*x);
                        }
                    }
                 k=k+1;

                }
                 fill(mx, my, 125);
                 rect (498,298,4,4);
            }
            
void efectocuatro()            
            
            {
              int k=0;
              float d=dist(700,300,mouseX,mouseY);
              float di=map(d,0,100,1,10);
              
              for (int x=0; x< fin; x=x+(int)di)
                {
                  if (k % 2 == 0)
                    {
                      fill(231, 9, 0);
                      rect (600+x,200+x,tam-2*x,tam-2*x);
                    }else
                    {if (k<10)
                      {
                        fill(251, 158, 71);
                        rect (600+x,200+x,tam-2*x,tam-2*x);
                      }else
                        {
                        fill(142, 154, 245);
                        rect (600+x,200+x,tam-2*x,tam-2*x);
                        }
                    }
                 k=k+1;
                }
                 fill(231, 9, 0);
                 rect (698,298,4,4);
            }
