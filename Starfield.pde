Particle[] newParticle;

void setup()
{
	size(512, 512);
	background(0);
	newParticle = new Particle[500];
	for(int i = 0; i < newParticle.length; i++)
	{
		newParticle[0] = new OddballParticle();
		newParticle[1] = new JumboParticle();
		newParticle[i] = new NormalParticle();

	}
}
void draw()
{
	for(int i = 0; i < newParticle.length; i++)
	{
		newParticle[0].move();
		newParticle[0].show();
		newParticle[1].move();
		newParticle[1].show();
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
		x = Math.cos(myAngle)*mySpeed + x;
		y = Math.sin(myAngle)*mySpeed + y;
		if (x > 511 || x < 1 || y > 511 || y < 1)
		{
			 x = 250;
			 y = 250;
		}
	}
	public void show()
	{
		
		fill(myColor);
		ellipse((int)x, (int)y, 5, 5);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle 
{
		double x = 250;
		double y = 250;
		double myAngle =(int)(Math.random()*200);
		double mySpeed =(int)(Math.random()*200);

	public void move()
	{
		x = Math.sin(myAngle)*mySpeed + x;
		y = Math.cos(myAngle)*mySpeed + y;
		if (x > 511 || x < 1 || y > 511 || y < 1)
		{
			 x = 250;
			 y = 250;
		}

	}
	public void show()
	{
		noStroke();
		ellipse((int)x, (int)y, 10, 10);
		ellipse((int)x+8, (int)y+8, 10, 10);
		ellipse((int)x-8, (int)y-8, 10, 10);


	}
}	
class JumboParticle extends OddballParticle
{
      
	public void show()
	{
		ellipse((int)x, (int)y, 100, 100);
		ellipse((int)x+40, (int)y-40, 80, 80);
		ellipse((int)x-40, (int)y-40, 80, 80);
		fill(0);
		ellipse((int)x+15, (int)y, 10, 10);
		ellipse((int)x-15, (int)y, 10, 10);
	}
}

