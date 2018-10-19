void draw_car()
{
	// scoreborad
	fill(0);
	rect(0, 0, 900, 900);

	fill(0);
	rect(1000,150,300,300);
	fill(255);
	textSize(60);
	text(score, 1030, 250);

	_time--;

	// circle check
	if(road[5]._y[0] >= 900)
	{
		int tmp = -180;

		for(int i=0; i<6; i++)
		{
			road[i].init(tmp);
			tmp += 180;
		}
	}

	// display
	for(int i=0; i<6; i++)
		road[i].display();

	player.display();

	for(int i=0; i<2; i++)
	{
		if(enemy[i]._y[0] >= 900)
		{
			score += 10;
			enemy[i].init((int)random(2, 11)*60, (int)random(1, 4)*-60);
		}

		enemy[i].display();

		if(_time == 0 && pause == false)
			enemy[i].enemy_mov();
	}

	// user input
	if(keyPressed == true && _time%10 == 0 && pause == false)
		player.move(key);

	// edge check
	if(player._x[1] <= 0 || player._x[3] >= 840)
		end_game_car();

	// hit check
	for(int i=0; i<7; i++)
		for(int j=0; j<7; j++)
			for(int k=0; k<2; k++)
				if(player._x[i] == enemy[k]._x[j] && player._y[i] == enemy[k]._y[j])
					end_game_car();

	// time clock reset
	if(_time == 0)
		_time = 20;

	// pause
	if(pause == true)
	{
		textSize(60);
		text("Pause", 380, 480);
	}

	// to home page
	if( mousePressed == true && mouseButton == LEFT ){
		if( mouseX > 950 && mouseX < 1150 && mouseY > 600 && mouseY < 700 ){
			home = 0;
			setup();
		}
	}
}