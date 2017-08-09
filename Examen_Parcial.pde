  int x = 90;
  int y = 100; 
  int x2 = 500;
  int y2 = 400;
  
  //int menos = 40;
  int mas = 230;
  //int menos2 = 30; 
  int mas2 = 150;



  int xcuerpo_completo = 200; 
  int ycuerpo_completo = 200;
  int xcinturon = 200;
  int ycinturon =20;
  int xcabeza = 100;
  int ycabeza = 100; 
  int xccinturon = 40; 
  int yccinturon = 40;
  int xojog = 50;
  int yojog = 50;
  

  
  PImage img; 
void setup()  
{
    size (600, 600);
    
    //img = loadImage ("galaxia.jpg");
     
}
  void draw ()
  {
  rectMode(CENTER);
  noStroke();
  //background (img);
  
  //image (img, 0, 0, width, height );
  
   float diameter = map (mouseX,0, width, 100, 350); //Cuerpo
   float diameter2  = map (mouseX,0, width, 20, 100); //Bolita Cinturon
   float diameter3 = map (mouseX, 0, width, 20, 100); //Linea Cinturon
   float diameter4 = map (mouseX, 0, width, 40, mas);//Cabeza
   float diameter5 = map (mouseX, 0, width, 30, mas2); //Ojo
   
   
   
   
  x+=5;
  y++;
  
  if (mas<= 230) {
    //Cuerpo
    fill (#4F548B); 
    ellipse (x, y+60-50, diameter, diameter);
    //Cabeza
    fill (#4F548B); 
    rect (x, y-10-diameter4, diameter4 , diameter4+50);
  
  
  }
  
  if (mas2 <= 150){
      //Ojo Grande
      fill (#8990DB);
      ellipse (x, y-50-diameter5, diameter5, diameter5); 
  }
    
 
  //Cinturon
  fill (#8990DB);
  rect (x, y+60-50,diameter3*4.5, diameter3);
  //C. Cinturon
  fill (#303D50);
  ellipse (x, y+60-50,diameter2, diameter2); 
  
  
   if (keyPressed) //detectando una tecla si esta presionada
    {
       if ((key == 'a') || (key == 'A')){
       fill (#00F53B);
        ellipse (x, y-50-diameter5, diameter5, diameter5);
       
       
       } 
    
    }
  
   if (x >= 500)
   {
     noStroke();
     //background(img);
      //image (img, 0, 0, width, height );
     x2-=5;
     y2++;
  
  
       if (x >= 500)
       {
         noStroke();
         //background(0);
         x2-=3;
         
         if (mas <= 230){
             //Cuerpo
             fill (#4F548B); 
             ellipse (x2, y+60-50, diameter, diameter);
              //Cabeza
             fill (#4F548B); 
             rect (x2, y-10-diameter4,diameter4 , diameter4+50);
          }
          
     if (mas2 <= 150){
           
             //Ojo Grande
              fill (#8990DB);
              ellipse (x2, y-50-diameter5, diameter5, diameter5); 
              
       
       }
  
   //Cinturon
  fill (#8990DB);
  rect (x2, y+60-50,diameter3*4.5, diameter3);
  //C. Cinturon
  fill (#303D50);
  ellipse (x2, y+60-50,diameter2, diameter2); 
 
  
  
   if (keyPressed) //detectando una tecla si esta presionada
    {
       if ((key == 'a') || (key == 'A')){
       fill (#00F53B);
         ellipse (x2, y-50-diameter5, diameter5, diameter5); 
       
       } 
    
    }
     
  if(x2 <= 90)
     {
       x = 90;
       x2 = 500;
       y = 100;
       y2 = 400;
      
     }
   }
   
   
   
   
   
    
     
  }

  }