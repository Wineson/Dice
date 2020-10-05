void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  int sum = 0;
  background(180);
  for(int y = 20; y <= 560; y+= 40)
  {
  for(int x = 20; x <= 560; x+= 40)
  {
  Die bob = new Die(x, y);
  sum+= bob.dieRoll;
  bob.show();
  }
  }
  text("The sum of the dice is: " + sum, 300, 590);
}
void mousePressed()
{
  redraw();
}
class Die
{
    int myX, myY, dieRoll;  
    Die(int x, int y) 
    {
    roll();
    myX = x;
    myY = y;
    }
    void roll()
    {
      dieRoll = (int)(Math.random() * 6 + 1);
    }
    void show()
    {
    int r, g, b;
    r = (int)(Math.random() * 200 + 56);
    g = (int)(Math.random() * 200 + 56);
    b = (int)(Math.random() * 200 + 56); 
    fill(r, b, g);
    rect(myX, myY, 30, 30, 10);
    fill(0);
    if(dieRoll == 1)
    {
    ellipse(myX + 15, myY + 15, 5, 5); 
    }
    else if(dieRoll == 2)
    {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    }
    else if(dieRoll == 3)
    {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 15, myY + 15, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    }
    else if(dieRoll == 4)
    {
    ellipse(myX + 8, myY + 8, 5, 5);
    ellipse(myX + 8, myY + 22, 5, 5);
    ellipse(myX + 22, myY + 8, 5, 5);
    ellipse(myX + 22, myY + 22, 5, 5);
    }
    else if(dieRoll == 5)
    {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 10, myY + 20, 5, 5);
    ellipse(myX + 15, myY + 15, 5, 5);
    ellipse(myX + 20, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    }
    else if(dieRoll == 6)
    {
    ellipse(myX + 10, myY + 10, 5, 5);
    ellipse(myX + 20, myY + 20, 5, 5);
    ellipse(myX + 10, myY + 20, 5, 5);
    ellipse(myX + 20, myY + 10, 5, 5);
    ellipse(myX + 10, myY + 15, 5, 5);
    ellipse(myX + 20, myY + 15, 5, 5);
    }
   }    
}
