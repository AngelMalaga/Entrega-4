class DCanvas
{ 
 // Este es el canvas  de la ventana inferior de edicion
  PGraphics buffer;
  float lastPos = 0;
  public DCanvas()
  {
   buffer = createGraphics(711,350);


  }
   
   void draw()
   {

   buffer.beginDraw();
   //buffer.background(c);
 
    drawLines();
    if(state == state.draw)
    {
      update();
    }
 
 
    if(state == state.loop)
  {
    Dcanvas.test();
  }
   
   
   //drawShapes();
   
   buffer.endDraw();
  
  
  image(buffer,300,210);
   }
   
  
  
  
 void drawLines()
{
  buffer.beginDraw();
  buffer.background(c);
  buffer.stroke(180);
  buffer.strokeWeight(1);
  
  for (int i = 0; i <= rango; i++)
  {
    buffer.line(50 * i, 0, 50 * i, height); // filas
    
  }
   for (int i = 0; i <= 20; i++)
  {
    
    buffer.line(0, 50 * i-210 , width, 50 * i-210 );  // columnas
  }
  
  

  buffer.endDraw();
}
  
  
  //No necesario, update() hace lo mismo que esta funcion.
  //Update(Reutilizado en test() )
 /*
 void drawShapes()
{
   buffer.beginDraw();
  for (int i = 0; i < buffers.ShapePoints.size(); i ++ )
  {
    buffers.ShapePoints.get(i).drawShape();
  }
  buffer.endDraw();
}


*/

void Press()
 {
   /*
  float x = (50 *  (mouseX  / 50 )) -300 ;
  float y = (50 *  (mouseY  / 50 )) -210;
  if(x >=0){
  float map = map(x, 0, buffer.width, 0, 14);
  int time = (Math.round(map)); // añadir time al Json de Dcanvas a ShapeCreator
  float TR = Time + time*1000;
  stime = time;

  buffers.ShapePoints.add(new ShapeCreator(x,y,Shape,Size,dcolor,TR));
  
  
  }
*/

  
  if(isDelete == false)
  {
  float x = (50 *  (mouseX  / 50 )) -300 ;
  float y = (50 *  (mouseY  / 50 )) -210;
  if(x >=0){
  float map = map(x, 0, buffer.width, 0, 14);
  int time = (Math.round(map)); // añadir time al Json de Dcanvas a ShapeCreator
  float TR = Time + time*1000;
  stime = time;

  buffers.ShapePoints.add(new ShapeCreator(x,y,Shape,Size,dcolor,TR));
  
     }
  
  }
  else if(isDelete == true)
  {
    
     float x = (50 *  (mouseX  / 50 )) -300 ;
     float y = (50 *  (mouseY  / 50 )) -210;
     if(x >=0){
     float map = map(x, 0, buffer.width, 0, 14);
     int time = (Math.round(map)); // añadir time al Json de Dcanvas a ShapeCreator
     float TR = Time + time*1000;
     stime = time;

     //buffers.ShapePoints.add(new ShapeCreator(x,y,Shape,Size,dcolor,TR));
     
      for (int i = 0; i < buffers.ShapePoints.size(); i ++ )
     {
      float[] dato = buffers.ShapePoints.get(i).getData();
       if(dato[0] == x && dato[1] == y)
       {
         buffers.ShapePoints.remove(i);
       }
      
      }
     
     }
  }
  
  
  
  
  
  
  
  
  
  
 }

    
    void update()
    {
       if(buffers.ShapePoints.size()>0)
            {
             for(int i = 0; i < buffers.ShapePoints.size(); i++)
              {
               
                float nextPos = Time + Range;
                float[] data = new float[7];
                data = buffers.ShapePoints.get(i).getData();
                 lastPos = data[7];
                 if(lastPos >= Time && lastPos <= nextPos)
                 {
                  buffers.ShapePoints.get(i).drawShape();
                 }
              }
             
            }
    }
  
  
  
  void test() ////////// mejorar es solo un test//////////////////////////
  {
    
   
 // float pos = map(player.position(), 0, player.length(), 0, buffer.width);
  
   

      
  for (int i = 0; i < buffers.ShapePoints.size(); i ++ )
  {
   // buffers.ShapePoints.get(i).moveShape();
   
      float nextPos = Time + Range;
                float[] data = new float[7];
                data = buffers.ShapePoints.get(i).getData();
                 lastPos = data[7];
                 if(lastPos >= Time && lastPos <= nextPos && data[7]<player.position())
                  {
                
                   buffers.ShapePoints.get(i).moveShape();
                  }
                 
                  
                  
                 }
    
  }
  
    
    
  }
  
  
  
