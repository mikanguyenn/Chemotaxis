//declare bacteria variables here
Bacteria[] mika;
Bacteria bob;
 void setup()   
 {
   size(500,500);
   background(0);
   frameRate(30);
   //initialize bacteria variables here
   mika = new Bacteria [20];
   bob = new Bacteria (20,20);
   for(int i = 0; i < mika.length; i++){
   mika[i] = new Bacteria(20,20);
   }
 }   
 void draw()   
 {    
   background(0);
   //move and show the bacteria 
bob.move();
bob.show();
   for(int i = 0; i < mika.length; i++){
     mika[i].walk();
     mika[i].show();
   }
 }  
 class Bacteria    
 {     
  int myX,myY;
  int myColor;
  Bacteria (int x, int y){
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*256+1), (int)(Math.random()*256+1),(int)(Math.random()*256+1));
  }
  void walk(){
    myX = myX + (int)(Math.random()*7)-2;
    myY = myY + (int)(Math.random()*7)-2;
  }
  void move(){
   myX = mouseX;
   myY = mouseY;
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
 }      
