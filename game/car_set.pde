Car player;
Car[] enemy;
Road[] road;
int _time = 20;

void set_car()
{	
	frameRate(60);
	
	score = 0;
	pause = true;

	background(0);

	// score text
	fill(255);
	textSize(80);
	text("Score", 950, 150);
	
	// pause & start
	fill(195);
	rect(950,600,200,100);
	textSize(50);
	fill(0);
	text("Home",970,670);

	// road init
	road = new Road[6];
	int tmp = -180;

	for(int i=0; i<6; i++)
	{
		road[i] = new Road();
		road[i].init(tmp);
		tmp += 180;
	}

	// car init
	player = new Car();
	player.init(420, 720);

	enemy = new Car[2];
	for(int i=0; i<2; i++)
		enemy[i] = new Car();

	enemy[0].init((int)random(2, 11)*60, -180);
	enemy[1].init((int)random(2, 11)*60, -660);
}