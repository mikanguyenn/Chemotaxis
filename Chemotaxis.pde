/declare bacteria variables here
Bacteria[] mika;
Bacteria bob;
 void setup()   
 {
   size(500,500);
   background(0);
   frameRate(30);
   //initialize bacteria variables here
   mika = new Bacteria [70];
   bob = new Bacteria (20,20);
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
   bob.move();
   bob.show();
 }  
 class Bacteria    
 {     
  int myX,myY;
  int myColor;
  Bacteria (int x, int y){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*256+1), (int)(Math.random()*256+1),(int)(Math.random()*256+1));
  }
  void walk(){
    myX = myX + (int)(Math.random()*11)-5;
    myY = myY + (int)(Math.random()*11)-5;
  }
  void move(){
ellipse(mouseX, mouseY, 100,50);
  }
  void show(){
    for(int i = 0; i < mika.length; i++){
    fill(myColor);
    ellipse(myX,myY,20,20);
    }
  }
 }      
