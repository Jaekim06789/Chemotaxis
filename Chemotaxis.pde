 //declare bacteria variables here
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	frameRate(10);
 	colony = new Bacteria[100];
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(0);
 	for(int i = 0; i < colony.length; i++){
 		colony[i].walk();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
   int myX = 250;
   int myY = 250;
   void walk(){
     myX = myX + (int)((Math.random()*20)-10);
     myY = myY + (int)((Math.random()*20)-10);
   }
   void show(){
   	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse(myX,myY,10,10);
   }
 }
