boolean gamemode = false;
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
			end = false;
			setup();
		}
	}
	if(home==1 && gamemode == true){
		if( key == 'w' || key == 'a' || key == 's' || key == 'd' )
			snakes[0].turn_snake(key);
	}
	if(home==2 && gamemode == true){
		if(key == 'a' || key == 'd' )
			player.move(key);
	}
	

}

void end_game_snake()
{
	gamemode = false;
	end = true;

	// loser will change to pic in the future
	textSize(100);
	fill(63,72,204);
	text("LOSER!!!", 250, 475);
}

void end_game_car()
{
	gamemode = false;
	end = true;

	// loser will change to pic in the future
	textSize(100);
	fill(63,72,204);
	text("LOSER!!!", 250, 475);
}

