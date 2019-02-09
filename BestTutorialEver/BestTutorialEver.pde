Population test;
PVector goal  = new PVector(400, 10);

public Obstacle[] obstacles = new Obstacle[3]; //initialize array of obstacles; set the amount of obstacles — in this case, 2



void setup() {
  size(700, 700); //size of the window
  frameRate(200);//increase this to make the dots go faster
  test = new Population(800);//create a new population with 1000 members
  
  /*Specify each obstacle here: */
  obstacles[0] = new Obstacle(0,200,600,10);
  obstacles[1] = new Obstacle(50,400,500,10);
  obstacles[2] = new Obstacle(450, 500, 200, 10);
}


void draw() { 
  background(255);

  //draw goal
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);

  //draw obstacle(s)
  fill(0, 0, 255);
  
  for (int i = 0; i < obstacles.length; i++) {
      obstacles[i].show();
  }

  if (test.allDotsDead()) {
    //genetic algorithm
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  } else {
    //if any of the dots are still alive then update and then show them

    test.update();
    test.show();
  }
}
