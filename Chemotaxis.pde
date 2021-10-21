//declare bacteria variables here
Bacteria[] mika;
Bacteria bob;
 void setup()   
 {
   size(520,520);
   background(0);
   frameRate(30);
   //initialize bacteria variables here
   mika = new Bacteria [70];
   bob = new Bacteria (0,0);
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
     mika[i].poop();
     mika[i].show();
   }
  bob.move();
  bob.shows();
 }  
 class Bacteria    
 {     
  int myX,myY;
  int myColor;
  int mySize;
  Bacteria (int x, int y){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    myX = x;
    myY = y;
    mySize = 20;
    myColor = color((int)(Math.random()*256+1), (int)(Math.random()*256+1),(int)(Math.random()*256+1));
  }
  void walk(){
    myX = myX + (int)(Math.random()*9)-4;
    myY = myY + (int)(Math.random()*9)-4;
  }
  void move(){
   ellipse(mouseX,mouseY,100,100);
   fill(0);
   ellipse(mouseX-30,mouseY,40,40);
   ellipse(mouseX-10,mouseY,40,40);
   ellipse(mouseX+20, mouseY + 30, 20,10);
   fill(255);
   ellipse(mouseX-40,mouseY,10,20);
   ellipse(mouseX-20, mouseY,10,20);
  }
  void poop(){
    if(dist(myX,myY,mouseX,mouseY)<= mySize*2){
      mySize = 0;
    }
  }
  void show(){
    for(int i = 0; i < mika.length; i++){
    fill(myColor);
    ellipse(myX,myY,mySize,mySize);
    }
  }
  void shows(){
    ellipse(0,0,0,0);
  }
 }      
