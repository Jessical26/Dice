void setup()
  {
      noLoop();
      size(300,300);
  }
  void draw()
  {
      background(255,255,255);
      Die one = new Die(15,15);
      one.show();
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
      }
      void show()
      {
          //your code here
          fill(0);
          rect(myX,myY,50,50);
      }
  }