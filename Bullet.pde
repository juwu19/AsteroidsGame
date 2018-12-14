class Bullet extends Floater {
	public Bullet(Spaceship x){
		double dRadians = myPointDirection*(Math.PI/180);
		myCenterX = qAndr.getX();
		myCenterY = qAndr.getY();
		myPointDirection = qAndr.getPointDirection();
		myDirectionX = 5 * Math.cos(dRadians) + qAndr.getX();
		myDirectionY = 5 * Math.sin(dRadians) + qAndr.getY();
	}
	public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}

	public void show(){
		fill(255);
    	ellipse((float)myCenterX,(float)myCenterY,5,5);
	}
}