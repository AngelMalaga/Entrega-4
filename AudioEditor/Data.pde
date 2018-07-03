class Data
{
  


JSONArray bcolor,lcolor,points ;
JSONObject gcolor,rcolor,shape ;
JSONObject json;
String Nombre;

 Data()
  {

  points = new JSONArray();

  
  }
  
  void fileSong(String nombre)
  {
    this.Nombre = nombre;
  }

void savedata(int time)
{print("data 4 :::::",buffers.ShapePoints.size());

  if(buffers.ShapePoints.size()> 0 && player != null)
  {
    for(int i = 0; i < buffers.ShapePoints.size(); i++)
  {
     temp();
    float[] data = new float[7];
    data = buffers.ShapePoints.get(i).getData();
  // print("data 4 :::::",ShapePoints.size());
   
   
    json.setString("SongName",Nombre);
    json.setInt("Lenght",time);
    
   
     gcolor.setFloat("R",255);
     gcolor.setFloat("G",255);
     gcolor.setFloat("B",255);
     
     
    bcolor.setJSONObject(0,gcolor);
    json.setJSONArray("Background",bcolor);
    
    
     shape.setFloat("Shape",data[2]);
     shape.setFloat("x",data[0]);
     shape.setFloat("Position",data[1]);
     shape.setFloat("Size",data[3]);
     shape.setFloat("Time",data[7]);
     
     rcolor.setFloat("R",data[4]);
     rcolor.setFloat("G",data[5]);
     rcolor.setFloat("B",data[6]);
     
     
     lcolor.setJSONObject(0, rcolor);
     shape.setJSONArray("Color", lcolor);
  
     points.setJSONObject(i,shape);
     json.setJSONArray("Level",points);
    
 

     saveJSONObject(json, Path);
   
    
    
    }
     
  }
  
}

  
  void temp()
  {
      gcolor = new JSONObject();
      shape = new JSONObject();
      rcolor = new JSONObject();
      json = new JSONObject();
      bcolor = new JSONArray();
      lcolor = new JSONArray();
  }

}
