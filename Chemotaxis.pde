 //declare bacteria variables here   
 Bacteria [] jp;
PImage photo;
 void setup()   
 {     
   size (1000,1000);
   photo = loadImage("jp.png");

   jp = new Bacteria [100];
   for(int i = 0; i<jp.length; i++){
      jp[i] = new Bacteria();
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background((int)(Math.random()*40),(int)(Math.random()*50),(int)(Math.random()*10));
   for (int i = 0; i < jp.length; i++){
     jp[i].show();
     jp[i].walk();
   }
   image(photo, mouseX-90,mouseY-90);
 }  
 class Bacteria    
 {     
   int myX;
   int myY; 
   int myColor;
  Bacteria (){
    myX = 250;
    myY = 250;
    
   }
   void walk (){
     myX=myX+(int)(Math.random()*9)-3;
     myY=myY + (int)(Math.random()*9)-3;
     
     if (mouseX > myX)
    {
      myX = myX + (int)(Math.random()*5)-1;
    }
    if (mouseX < myX)
    {
      myX = myX + (int)(Math.random()*5)-4;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random()*5)-1;
    }
    if (mouseY < myY)
    {
      myY = myY + (int)(Math.random()*5)-4;
    }
        
   }
   
   void show (){
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     ellipse(myX,myY,20,20);
   }
 }    
