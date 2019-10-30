Bacteria[] bob = new Bacteria[100];
 void setup()   
 {     
 	size(1000, 1000); 
 for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria(150, 150, i);
   }
 }   
 void draw()   
 {
   background(255);
   for(int i = 0; i < bob.length; i++){
     bob[i].show();
     bob[i].move();
   }
 }  
 class Bacteria    
 { 
   int myX, myY;
   int[] cols = new int[3];
 	 Bacteria(int x, int y, int col)
   {
     myX = x;
     myY = y;
     for(int i = 0; i < cols.length; i++){
       cols[i] = ((int)(Math.random() * col));
     }
   }
   void show(){
     noStroke();
     fill(cols[0], cols[1], cols[2]);
     ellipse(myX, myY, 5, 5);
   }
   void move(){
     if(myX <= mouseX){
       myX += ((Math.random() * 3) * (1 + (mouseX - myX)/100));
     }
     if(myX > mouseX){
       myX -= (((Math.random() * 3) - 1) * (1 + (myX - mouseX)/100));
     }
     if(myY <= mouseY){
       myY += ((Math.random() * 3) * (1 + ((mouseY - myY)/100)));
     }
     if(myY > mouseY){
       myY -= (((Math.random() * 3) - 1) * (1 + ((myY - mouseY)/100)));
     }
   }
 }    
