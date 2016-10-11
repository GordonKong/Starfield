Particle[] particles;
	//your code here
void setup()
{
	size(500, 500);
	particles = new Particle[1000];
	for (int i = 0; i <particles.length; i++) {
	particles[i] = new NormalParticle();
    }
    particles[0] = new OddballParticle();
	particles[1] = new JumboParticle();
	particles[3] = new JumboParticle();
	particles[4] = new JumboParticle();
	particles[5] = new JumboParticle();
//your code here
}
void draw()
{
	background(0);
	for (int i = 0; i < particles.length; i++)
	{
		particles[i].show();
		particles[i].move();
		 //your code here
	}
}
class NormalParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;
	int c;

 NormalParticle()
 {
 	myX = 250;
 	myY = 250;
 	mySpeed = (int)(Math.random()*10);
 	myAngle = Math.PI*2*Math.random();
 	c = color(0, ((int)(Math.random() * 255)), ((int)(Math.random() * 255)));
}
 
 	void move()
 	{
 		myX += Math.cos(myAngle) * mySpeed;
 		myY += Math.sin(myAngle) * mySpeed;
 		if(myX >= 500 || myX <=0 || myY >=500 || myY <=0)
 		{
 			myX = 250;
 			myY = 250;
 		} 
 	}

 	void show()
 	{
 		fill(c);
 		ellipse((float)myX, (float)myY, 5, 5);
 	}
 }

interface Particle
{
	public void move();
	public void show();
	//your code here
}
class OddballParticle implements Particle//uses an interface
{
	double x,y, angle, speed;
	OddballParticle() {
		x = 250;
		y = 250;
		angle = Math.PI*2*Math.random();
		speed = (Math.random()*10);
	}
	void move() {
		x +=  Math.cos(angle) * speed;
		y +=  Math.sin(angle) * speed;
	}

	void show() {
		fill(0,255,0);
		ellipse((float)x,(float)y, 20, 20);
	}
	//your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
	void show() {
		fill(255,0,255);
		ellipse((float)myX, (float)myY, 15, 15);
	}
}

