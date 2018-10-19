boolean gamemode = false;
boolean pause = false;
boolean end = false;

void FirstValue_snake(){
	snakes[0].start_snake(120,30);
	snakes[1].start_snake(90,30);
	snakes[2].start_snake(60,30);
	snakes[3].start_snake(30,30);
}

void Grow_snake(){
	snakes[count].start_snake( snakes[count-1].x , snakes[count-1].y );
	snakes[count].stop_snake();
	snakes[count].follow_snake(snakes[count-1].path);
	count++;
}

void keyPressed() {
	if( key == ' ' )
	{
		gamemode = !gamemode;

		if(end == true)
		{
			gamemode = false;
			pause = false;
			end = false;

			setup();
		}
		else
			pause = !pause;
	}


}

void end_game_snake()
{
	gamemode = false;
	end = true;

	// loser will change to pic in the future
	textSize(100);
	fill(63,72,204);
	text("LOSER!!!", 300, 450);
}

void end_game_car()
{
	gamemode = false;
	end = true;

	// loser will change to pic in the future
	textSize(100);
	fill(63,72,204);
	text("LOSER!!!", 300, 450);
}