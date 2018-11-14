Spaceship qAndr;
Star [] sZ = new Star[200];
Asteroid [] chic = new Asteroid[50];
public void setup() 
{
	size(1000,1000);
	qAndr = new Spaceship();
	for(int i = 0; i < sZ.length; i++){
		sZ[i] = new Star();
	}
	for(int i = 0; i < chic.length; i++){
		chic[i] = new Asteroid();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < sZ.length; i++){
		sZ[i].show();
	}
	for(int i = 0; i < chic.length; i++){
		chic[i].show();
		chic[i].move();
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

