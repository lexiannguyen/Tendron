public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        double angle = (Math.random()*(Math.PI*4));
        
        
        
        Tendril[] tendrils = new Tendril[7];
        for(int i = 0; i < tendrils.length; i++){
          tendrils[i] = new Tendril(x, y, len, angle);
          tendrils[i].show();
        }
        
        
    }
}
