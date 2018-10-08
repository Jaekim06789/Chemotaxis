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
 		colony[i].move();
 		colony[i].size();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
   int myX = 250;
   int myY = 250;
   int radX = 10;
   int radY = 10;
   void move(){
     myX = myX + (int)((Math.random()*20)-10);
     myY = myY + (int)((Math.random()*20)-10);
   }
   void size(){
   	for(int c = 0; c < 1; c++){
   		radX = radX + (int)((Math.random()*3)-1);
   		radY = radY + (int)((Math.random()*3)-1);
   	}
   }
   void show(){
   	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse(myX,myY,radX,radY);
   }
 }
