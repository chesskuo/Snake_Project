void draw_car()
{
	fill(0);
	rect(0, 0, 900, 900);

	if(road[5]._y[0] >= 900)
	{
		int tmp = -180;
		for(int i=0; i<6; i++)
		{
			road[i].init(tmp);
			tmp += 180;
		}
	}

	for(int i=0; i<6; i++)
	{
		road[i].display();
	}

	if( mousePressed == true && mouseButton == LEFT ){
		if( mouseX > 950 && mouseX < 1150 && mouseY > 600 && mouseY < 700 ){
			home = 0;
			setup();
		}
	}

}