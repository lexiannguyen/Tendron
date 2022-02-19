public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw() //creates a new tendron with 50 short segments
{
  background(255);
  
  Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
