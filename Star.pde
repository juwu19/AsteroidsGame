public class Star {
  private int x,y;
  public Star() {
    x = (int)(Math.random()*1000);
    y = (int)(Math.random()*1000);
  }
  public void show() {
    fill(255);
    ellipse(x,y,3,3);
  }
}