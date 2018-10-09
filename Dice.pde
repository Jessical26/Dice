int numRoll;
int sumRoll = 0;
void setup()
  {
      noLoop();
      size(400,400);
      System.out.println(numRoll);
  }
  void draw()
  {
    int R = (int)(Math.random()*256);
    int G = (int)(Math.random()*256);
    int B = (int)(Math.random()*256);
    background(R,G,B);
      
      for(int y = 10; y <250; y+=60){
            for(int x = 25; x < 350; x+=60){
               Die one = new Die(x,y);
               one.roll();
               one.show();
            }
          }
      
      fill(0);
      text("Sum of Rolls = " + sumRoll, 150, 375);
      sumRoll = 0;
      
      
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //variable declarations here
      int myX, myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
 
      }
      void roll()
      {
          //your code here
          numRoll = (int)(Math.random()*6)+1;
          
      }
   
    //quarter and half measurement of the die
    int quarter = 50/4;
    int half = 25;  
      void showFour(){
        ellipse(myX + quarter, myY + quarter,8,8);
        ellipse(myX + quarter + half, myY + quarter,8,8);
        ellipse(myX + quarter, myY + quarter + half,8,8);
        ellipse(myX + quarter + half, myY + quarter + half,8,8);
      }
      
      void show()
      {
          //your code here
          
          fill(0);
          rect(myX,myY,50,50);

          
          fill(255,255,255);
          
          if(numRoll == 1){
            //shows one dot
            ellipse(myX + half, myY + half, 8, 8);
            sumRoll += 1;
          }else if(numRoll == 2){
            //shows two dots
            ellipse(myX+ quarter,myY+quarter,8,8);
            ellipse(myX + quarter+half,myY + quarter + half,8,8);
            sumRoll +=2;
          }else if(numRoll==3){
            //three dots = all of the above(2+1)
            //shows one
            ellipse(myX + half, myY + half, 8, 8);
            //shows two
            ellipse(myX+ quarter,myY+quarter,8,8);
            ellipse(myX + quarter+half,myY + quarter + half,8,8);
            sumRoll += 3;
          }else if(numRoll == 4){
             //shows four dots
            showFour();
            sumRoll += 4;
          }else if (numRoll == 5){
            //Five dots = all of the above (4+1)
            //four dots
            showFour();
            //one dot
            ellipse(myX + half, myY + half, 8, 8);
            sumRoll +=5;
          }else if (numRoll == 6){
            //four dots
            showFour();    
            //Six dots = four dots + below code
            ellipse(myX + quarter, myY + half,8,8);
            ellipse(myX + half + quarter, myY + half,8,8);
            sumRoll += 6;
          }
      
      }
  }