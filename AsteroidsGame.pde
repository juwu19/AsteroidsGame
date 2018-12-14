Spaceship qAndr;
Star [] sZ = new Star[200];
ArrayList <Asteroid> chic = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
public void setup() {
	size(1000,1000);
	qAndr = new Spaceship();
	for(int i = 0; i < sZ.length; i++){
		sZ[i] = new Star();
	}
	for(int i = 0; i < 80; i++){
		chic.add(new Asteroid());
	}
}
public void draw() {
	background(0);
	for(int i = 0; i < pew.size(); i++){
		pew.get(i).show();
		pew.get(i).move();
		if(pew.get(i).myCenterX > 999 || pew.get(i).myCenterX < 1 || pew.get(i).myCenterY > 999 || pew.get(i).myCenterY < 1){
			pew.remove(i);
		}
	}
	for(int i = 0; i < sZ.length; i++){
		sZ[i].show();
	}
	for(int i = 0; i < chic.size(); i++){
		chic.get(i).show();
		chic.get(i).move();
		float d = dist(qAndr.getX(), qAndr.getY(), chic.get(i).getX(), chic.get(i).getY());
		if(d < 20){
			chic.remove(i);
		}
	}
	for(int i = 0; i < pew.size(); i++){
		for(int f = 0; f < chic.size(); f++){
			float d2 = dist(pew.get(i).getX(), pew.get(i).getY(), chic.get(f).getX(), chic.get(f).getY());
			if(d2 < 20){
				chic.remove(f);
				pew.remove(i);
				break;
			}
		}
	}
	qAndr.show();
	qAndr.move();
}
public void keyPressed(){
	 if(key == ' '){
		pew.add(new Bullet(qAndr));
	 }
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

