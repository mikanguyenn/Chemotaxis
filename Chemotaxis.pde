//declare bacteria variables here
Bacteria[] mika;
 void setup()   
 {
   size(500,500);
   background(0);
   frameRate(30);
   //initialize bacteria variables here
   mika = new Bacteria [20];
   for(int i = 0; i < mika.length; i++){
   mika[i] = new Bacteria(20,20);
   }
 }   
 void draw()   
 {    
   background(0);
   //move and show the bacteria 
   for(int i = 0; i < mika.length; i++){
     mika[i].walk();
     mika[i].show();
   }
 }  
 class Bacteria    
 {     
  int myX,myY;
  int myColor = (int)(Math.random()*256+1);
  Bacteria (int x, int y){
    myX = x;
    myY = y;
  }
  void walk(){
    myX = myX + (int)(Math.random()*7)-2;
    myY = myY + (int)(Math.random()*7)-2;
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
 }      
