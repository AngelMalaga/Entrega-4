class ShapeCreator
{
   float py,px,size,R,G,B,rt,x = 0;
   int type,vtime;
   boolean isRange = true;
   PVector rcolor ;

   ShapeCreator(float px,float py,int type,float size,PVector rcolor,float rt )
  {

    this.px = px;
    this.py = py;
    this.size = size;
    this.type = type;
    this.R = rcolor.x;
    this.G = rcolor.y;
    this.B = rcolor.z;
    this.rt = rt;
 
  }
  
 float[] getData() {
    float[] data = new float [8];
    

     data[0] = px;
     data[1] = py;
     data[2] = type;
     data[3] = size;
     
     data[4] = R;
     data[5] = G;
     data[6] = B;
     data[7] = rt;
     
        return data;
    }

 
  
 void drawShape()
 {
   if(type == 1)
   {
    
    Dcanvas.buffer.beginDraw();
     Dcanvas.buffer.fill(R,G,B);
     Dcanvas.buffer.rectMode(CENTER);
     Dcanvas.buffer.rect(px+25,py+25,size*2,size*2); 
     Dcanvas.buffer.endDraw();

   }
   else
   {
     
      Dcanvas.buffer.beginDraw();
      Dcanvas.buffer.fill(R,G,B);
      Dcanvas.buffer.ellipse(px+25,py+25,size*2,size*2); 
      Dcanvas.buffer.endDraw();
   }
   

  
 }
 
 
 void moveShape()/////////////////////solucionar esto
 {
   /*
    
       int ltm = int(Time + Range*10000);
    
      float xm1 = map( player.position(), 0, player.length(), 0, ltm);
      */
        float xm = map( x, 0, Dcanvas.buffer.width, 0, Range );
      int tm = Math.round(xm); 
    
      if(tm<=Dcanvas.buffer.width && isRange == true)
      {
     
       x = x +0.4;
      }
      else{
       isRange = false;
        
        //x = 0;
      
      }
      
    // print(", Xml: ,"+ xm1+", ltm: ,"+ ltm);
   /*
      if(xm1 >= ltm )
      {
       tm = 0;
       x = 0;
       print("Cero");
       isRange = true;     
      }
      */
  
  
  
   
    if(type == 1)
   {
    
    Dcanvas.buffer.beginDraw();
     Dcanvas.buffer.fill(R,G,B);
     Dcanvas.buffer.rectMode(CENTER);
     Dcanvas.buffer.rect(tm,py+25,size*2,size*2); 
     Dcanvas.buffer.endDraw();

   }
   else
   {
     
      Dcanvas.buffer.beginDraw();
      Dcanvas.buffer.fill(R,G,B);
      Dcanvas.buffer.ellipse(tm,py+25,size*2,size*2); 
      Dcanvas.buffer.endDraw();
   }
   
 }
/// Editar/////////////////////////////////////////////////////  NO  esta bien, hay que mejorar esta parte
/*
-Falta implementar  el boton de eliminar


intenta hacer lo del boton elimnar



*/

 void vdrawShape()
 {
     
    if(type == 1)
    {
      float   x = map(rt, 0, player.length(), 0, Vcanvas.buffer.width);  //
      float   y = map(py, 0, Vcanvas.buffer.height, 0, 7); // 
      y = y+2;
      Vcanvas.buffer.beginDraw();
      Vcanvas.buffer.fill(R,G,B);
      Vcanvas.buffer.rectMode(CENTER);
      Vcanvas.buffer.rect(x,y*9,10,10); 
      Vcanvas.buffer.endDraw();

      }
   else
   {
      float   x = map(rt, 0, player.length(), 0, Vcanvas.buffer.width);  //
      float   y = map(py, 0, Vcanvas.buffer.height, 0, 7); // 
      y = y+2;
      Vcanvas.buffer.beginDraw();
      Vcanvas.buffer.fill(R,G,B);
      Vcanvas.buffer.ellipse(x,y*9,10,10); 
      Vcanvas.buffer.endDraw(); 
     }
 }
  
}
