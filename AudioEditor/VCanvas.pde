class VCanvas
{ 
  // Este es el canvas  de la ventana superior de edicion
  PGraphics buffer;
  color c = color(255,255,255);
  int loopBegin;
int loopEnd;
  
  public VCanvas()
  {
   buffer = createGraphics(1000,150);
  }
  
   void draw()
   {
     
     
 
  buffer.beginDraw();
  buffer.background(c);
 
 
  int p = player.position();
  int l = player.length();
  float x = map(p, 0, l, 0, buffer.width);
  buffer.stroke(#0A0A0A);
  buffer.line(x, 0, x, buffer.height);
  
  
   lineOne = map(Time, 0, player.length(), 0, buffer.width);
   lineTwo = map(Time+Range, 0, player.length(), 0, buffer.width);
   
  float lbx = map(loopBegin, 0, player.length(), 0, width);
  float lex = map(loopEnd, 0, player.length(), 0, width);
   

  
  buffer.stroke(165,165,165,50);
  
   float t = 0;
  if(vrango != 0)
  {
    //t = 1000 / 195.0;// sigo medio confundido con esto xD
      t = 1000.0 / vrango;
    
    // print("t:, "+t);
  }
  
  for (int i = 0; i <= vrango; i++)
  {
  
   buffer.line(t * i, 0, t * i, height); // columnas
    
  }
   for (int i = 0; i <= 7; i++)
  {
    
    buffer.line(0, 22 * i , width, 22 * i  );  // filas
  }
  



   
   buffer.stroke(0,200,0);
   buffer.line(lineOne, 0,lineOne, height);
   buffer.stroke(255,5,5);
   buffer.line(lineTwo, 0, lineTwo, height);
   drawShapes();
   buffer.endDraw();
   image(buffer,12,50);
   Time();
  

   }
   // Crear linia de tiempo 20/06/18 consume mucho no lo pongas
   /*
   void DrawVisual()
   {
     for(int i = 0; i < player.bufferSize() - 1; i++)
        {
       float x1 = map( i, 0, player.bufferSize(), 0, width );
       float x2 = map( i+1, 0, player.bufferSize(), 0, width );
       buffer.beginDraw();
       
       buffer. line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );    
       buffer.endDraw();
        }
        

   }
   */
    void Time()
    {
    rango = (Math.round(Range))/1000; 
    vrango = (Math.round(player.length()))/1000; 
 
    }
    

      void drawShapes()
    {
      buffer.beginDraw();
      for (int i = 0; i < buffers.ShapePoints.size(); i ++ )
     {
      buffers.ShapePoints.get(i).vdrawShape();
      }
      buffer.endDraw();
    }
    
 
    float lastPos = 0;
    
    /*
    
  void mousePressed()
{
  int ms = (int)map(mouseX, 0, width, 0, player.length());
  int tm = Math.round(Time);  
  int ltm = Math.round(Time+ Range);
  if ( mouseButton == RIGHT )
  {
    player.setLoopPoints(tm, ltm);
    //loopEnd = ms;
    print(tm);
  }
 
}
    
    void keyPressed()
    {
      player.loop(2);
    }
 */
}
