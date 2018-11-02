Spaceship qAndr;
Star [] sZ = new Star[200];
public void setup() 
{
	size(1000,1000);
	qAndr = new Spaceship();
	for(int i = 0; i < 200; i ++){
		sZ[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < 200; i ++){
		sZ[i].show();
	}
	qAndr.show();
	qAndr.move();
}
public void keyPressed(){
	if(key == 't'){
		qAndr.setX((int)(Math.random()*1000)+1);
		qAndr.setY((int)(Math.random()*1000)+1);
		qAndr.setDirectionX((double)(0.0));
		qAndr.setDirectionY((double)(0.0));
		qAndr.setPointDirection((int)(Math.random()*360)+1);
		
	}
	if(key == 'w'){qAndr.accelerate(0.5);}
	if(key == 'a'){qAndr.turn(-3);}
	if(key == 's'){qAndr.accelerate(-0.5);}
	if(key == 'd'){qAndr.turn(3);}
}

