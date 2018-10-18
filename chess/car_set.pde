Road[] road;

void set_car()
{
	score = 0;

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

	road = new Road[6];
	int tmp = -180;

	for(int i=0; i<6; i++)
	{
		road[i] = new Road();
		road[i].init(tmp);
		tmp += 180;
	}

	frameRate(10);
}