Die one;

Die two;

void setup()

{

  size(490, 600);  

  noLoop();

  textAlign(CENTER);

}

void draw()

{

  fill(0,(int)(Math.random()*255),(int)(Math.random()*255));

  rect(0,0,600,600);

  float sum = 0;

  float avg = 0;

  for ( int y = 0; y <= 500; y += 55)

  {

    for ( int x = 0; x <= 500; x += 55)

    {

      Die d = new Die(x, y);

      d.show();

      if(d.rollnumber < 7)

        {

         sum = sum + d.rollnumber;

        }  

  }

  

}
      fill(255,255,255);
      text("Total: " +sum, 245, 590);

      avg = sum/110;

      text("Avg: "+ avg, 245,580);

}

void mousePressed()

{

  redraw();

}

class Die //models one single dice cube

{

  //member variable declarations here
  int rollnumber, myX, myY;


  Die(int x, int y) //constructor

  {

    rollnumber = (int)(Math.random()*6)+1;

    myX = x;

    myY = y;//variable initializations here

  }

  void show()

  { 

    fill(255, 255, 255);
    rect(myX, myY, 50, 50,20);
    fill(0, 0, 0);

    if (rollnumber == 1) {

      ellipse(myX + 25, myY +25, 10, 10);

    } else if (rollnumber == 2) {

      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);

    } else if (rollnumber ==3) {

      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);

    } else if (rollnumber == 4) {

      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX+ 10, myY +40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX+ 40, myY +40, 10, 10);

    } else if (rollnumber == 5) {
     
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      
    } else if (rollnumber == 6) {
      
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX+ 10, myY +40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX+ 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX+ 40, myY +40, 10, 10);
      
    }
  }
}
