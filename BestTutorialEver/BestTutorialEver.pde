Population test;
PVector goal  = new PVector(400, 10);


void setup() {
  size(800, 800); //size of the window
  frameRate(100);//increase this to make the dots go faster
  test = new Population(1000);//create a new population with 1000 members

  background(255);

  //draw goal
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);

  //draw obstacle(s)
  fill(0, 0, 255);

  rect(350, 200, 800, 10);
  rect(0, 400, 450, 10);
  rect(350, 600, 800, 10);

  // store a bitmap of the arena
  loadPixels();

}


void draw() { 
  
  // Restore the arena
  updatePixels();

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
