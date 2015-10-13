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
class NormalParticle implements Particle
{
	
		double x = 250;
		double y = 250;
		double myAngle =(int)(Math.random()*300);
		double mySpeed =(int)(Math.random()*300);

	int myColor; 
	NormalParticle()
	{
		
		myColor = (int)(Math.random()*300);
		
	}
	public void move()
	{
		x = Math.cos(myAngle)*mySpeed + x ;
		y = Math.sin(myAngle)*mySpeed + y ;
	}
	public void show()
	{
		fill(myColor);
		ellipse((int)x, (int)y, 5, 5);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle 
{
	double x = 250;
	double y = 250;
	double myAngle =(int)(Math.random()*200);
	double mySpeed =(int)(Math.random()*200);
	
}
public void move()
{
	x = Math.sin(myAngle)*mySpeed + x ;
	y = Math.cos(myAngle)*mySpeed + y ;
}
public void show()
{
	fill(myColor);
	ellipse((int)x, (int)y, 12, 12);
}
class JumboParticle //uses inheritance
{
	//your code here
}

