int[] buggies = new int[1000];
 void setup()   
 {     
   size(500,500);
   for(i = 0; i < buggies.length; i++)
   {
   buggies[i] = new Bacteria(250,250);
   }
 }   
 void draw()   
 {    
   background(0);
   buggies[i].move();
   buggies[i].show();
 }  
 class Bacteria    
 {     
   int mySize, myX, myY, myColor;
   Bacteria(int x, int y){
     mySize = 20;
     myX = x;
     myY = y; 
     myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),200);
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
   }
   void move()
   {
     if (mousePressed == true){
       if (mouseX > myX){
       myX = myX + (int)((Math.random()*4)-1);
     }
     else{
        myX = myX + (int)((Math.random()*4)-3);
     }
     if (mouseY > myY){
       myY = myY + (int)((Math.random()*4)-1);
     }
     else{
        myY = myY + (int)((Math.random()*4)-3);
     }
     }
     else{
       myX = myX + (int)((Math.random()*4)-2);
       myY = myY + (int)((Math.random()*4)-2);
     }
   }
 }
