//Vivian Lam. AP Computer Science, Mod 6/7, Chemotaxis
Bacteria [] nom;
Food food;
 void setup()   
 {     
  size(400,400);
  nom=new Bacteria[50];
  for(int i=0; i<nom.length; i++){
    nom[i]=new Bacteria();
  }   
  food=new Food();
}

 void draw()   
 {    
   background(0);

   for(int i=0; i<nom.length;i++){
    nom[i].move();
     nom[i].show();
     food.move();
     food.show();
   if(dist(nom[i].myX,nom[i].myY, food.hisX, food.hisY)<15){
    nom[i].myColor=0;
    nom[i].show();
   }
 }
   
 } 
 void mousePressed(){
   for(int i=0; i<nom.length;i++){
   nom[i].myColor=(color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)));
   }    
 }
 
 class Bacteria    
 {  
   int myX, myY, myColor;   
   Bacteria(){
     myX=(int)(Math.random()*400);
     myY=(int)(Math.random()*400);
     myColor= color ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   }   
   void move(){
     myX=myX+((int)(Math.random()*9)-4);
     myY=myY+((int)(Math.random()*9)-4);
     if(myX>=400){
       myX=0;
     }else if(myX<=0){
       myX=400;
     }
     if(myY>=400){
       myY=0;
     }else if(myY<=0){
       myY=400;
     }

   }
   void show(){
     noFill();
     strokeWeight(3);
     stroke(myColor);
     ellipse(myX,myY, 10,10);
   }
 }   
 class Food
 {
   int hisX, hisY;
   Food(){
     hisX=mouseX;
     hisY=mouseY;
   }
   void move(){
     hisX=mouseX;
     hisY=mouseY;
   }
   void show(){
     stroke(255);
     rect(hisX,hisY,30,30);
   }
 } 