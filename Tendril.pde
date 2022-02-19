class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY, startX, startY;
  private double myAngle;
  //private int len;



  public Tendril(int x, int y, int len, double theta)
  {
    //your code here
    myX = x;
    myY = y;
    
    myAngle = theta;
    myNumSegments = len; //changes length of tendril
  }
  public void setNumSegments(int x){
    myNumSegments = x;
  }
  public void show()
  {
    //your code here
    strokeWeight(0.04);
    startX = myX;
    startY = myY;
    float endX;
    float endY;
    for (int i = 0; i<myNumSegments; i++) {
      myAngle += (float)(Math.random() * 0.8 - 0.4);
      endX = startX + cos((float)myAngle) * SEG_LENGTH;
      endY = startY + sin((float)myAngle) * SEG_LENGTH;
      line(startX, startY, endX, endY);  //SO?
      startX = (int)endX;
      startY = (int)endY;
    }
    
    endX = startX + cos((float)myAngle) * SEG_LENGTH;
     endY = startY + sin((float)myAngle) * SEG_LENGTH;


    if(myNumSegments >= 3){
       Cluster bob = new Cluster(myNumSegments/2, (int)endX, (int)endY); 
       //setNumSegments(myNumSegments - 1);
    }
    

     
    
    
  }
}
