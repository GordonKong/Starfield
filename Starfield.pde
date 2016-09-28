Particle[] littleMatter;
		//your code here
void setup()
{
	size(500, 500);
	littleMatter = new Particle[1];
	for (int i = 0 i < littleMatter.length; i++)
	{
		littleMatter[i] = new Particle();
	}//your code here
}
void draw()
{
	background(0);
	for (int i = 0; i < littleMatter.length; i++)
	{
		littleMatter[i].show();
		littleMatter[i].move();
		 //your code here
	}
}
class NormalParticle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;

 NormalParticle(int x, int y)
 {
 	myX = x;
 	myY = y;
 	dSpeed = Math.random()*10;
 	myAngle = Math.PI*2*Math.random();

 }
 	void move()
 	{

 	}

 	void show()
 	{
 		
 	}

interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

