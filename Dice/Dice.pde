Die dice1;
Die dice2;
Die dice3;
Die dice4;
Die dice5;
Die dice6;
Die dice7;
Die dice8;
Die dice9;
Die dice10;
Die dice11;
Die dice12;

int x1 = 50;
int x2 = 250;
int x3 = 450;
int x4 = 650;

int y1 = 150;
int y2 = 350;
int y3 = 550;

void setup(){
  size(800,600);
  background(128);
  dice1 = new Die(x1,y1);
  dice2 = new Die(x2,y1);
  dice3 = new Die(x3,y1);
  dice4 = new Die(x4,y1);
  dice5 = new Die(x1,y2);
  dice6 = new Die(x2,y2);
  dice7 = new Die(x3,y2);
  dice8 = new Die(x4,y2);
  dice9 = new Die(x1,y3);
  dice10 = new Die(x2,y3);
  dice11 = new Die(x3,y3);
  dice12 = new Die(x4,y3);
  noLoop();
}

void draw(){
  int sum = dice1.dieValue + dice2.dieValue + dice3.dieValue + dice4.dieValue + dice5.dieValue + dice6.dieValue + dice7.dieValue + dice8.dieValue + dice9.dieValue + dice10.dieValue + dice11.dieValue + dice12.dieValue;
  background(128);
  dice1.show();
  dice2.show();
  dice3.show();
  dice4.show();
  dice5.show();
  dice6.show();
  dice7.show();
  dice8.show();
  dice9.show();
  dice10.show();
  dice11.show();
  dice12.show();
  text(sum,400,500);
}

void mousePressed(){
  dice1.roll();
  dice2.roll();
  dice3.roll();
  dice4.roll();
  dice5.roll();
  dice6.roll();
  dice7.roll();
  dice8.roll();
  dice9.roll();
  dice10.roll();
  dice11.roll();
  dice12.roll();
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	int x_pos, y_pos;
  int dieValue = int (random(1,7));
	
	//constructor
	Die(int x, int y){
		x_pos = x;
    y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
		dieValue = int(random(1,7));
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
		pushMatrix();
    translate(x_pos,y_pos);
    fill(255);
    rect(0,-100,100,100);
    //text(dieValue,0,50);
    ellipseMode(CENTER);
    fill(0);
    /*
      center dot: ellipse(50,-50,15,15);
      upper left dot: ellipse(25,-75,15,15);
      middle left dot: ellipse(25,-50,15,15);
      lower left dot: ellipse(25,-25,15,15);
      upper right dot: ellipse(75,-75,15,15);
      middle right dot: ellipse(75,-50,15,15);
      lower right dot: ellipse(75,-25,15,15);
    */
    switch(dieValue) {
      case 1:
        ellipse(50,-50,15,15);
        break;
      case 2:
        ellipse(75,-75,15,15);
        ellipse(25,-25,15,15);
        break;
      case 3:
        ellipse(75,-75,15,15);
        ellipse(50,-50,15,15);
        ellipse(25,-25,15,15);
        break;
      case 4:
        ellipse(25,-75,15,15);
        ellipse(25,-25,15,15);
        ellipse(75,-75,15,15);
        ellipse(75,-25,15,15);
        break;
      case 5:
        ellipse(25,-75,15,15);
        ellipse(25,-25,15,15);
        ellipse(50,-50,15,15);
        ellipse(75,-75,15,15);
        ellipse(75,-25,15,15);
        break;
      case 6:
        ellipse(25,-75,15,15);
        ellipse(25,-50,15,15);
        ellipse(25,-25,15,15);
        ellipse(75,-75,15,15);
        ellipse(75,-50,15,15);
        ellipse(75,-25,15,15);
        break;
    }
    popMatrix();
	}
}
