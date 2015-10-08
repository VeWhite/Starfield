NormalParticle[] newParticle;

void setup()
{
	size(512, 512);
	background(0);
	newParticle = new NormalParticle[100];
	for(int i = 0; i < newParticle.length; i++)
	{
		newParticle[i] = new NormalParticle();
	}
}
void draw()
{
	for(int i = 0; i < newParticle.length; i++)
	{
		newParticle[i].move();
		newParticle[i].show();
	}
}
class NormalParticle
{
	
		double x = 250;
		double y = 250;
		double myAngle = /*2*y*/ (int)(Math.random()*300);
		double mySpeed = /*2*x*/ (int)(Math.random()*300);

	int myColor; 
	NormalParticle()
	{
		
		myColor = (int)(Math.random()*300);
		
	}
	void move()
	{
		x = Math.cos(myAngle)*mySpeed + x ;
		y = Math.sin(myAngle)*mySpeed + y ;
	}
	void show()
	{
		fill(myColor);
		ellipse(x, y, 5, 5);
	}
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

