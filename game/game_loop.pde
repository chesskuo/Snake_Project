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
		if( key == 'W' || key == 'A' || key == 'S' || key == 'D' )
			snakes[0].turn_snake(Character.toLowerCase(key));
		if( key == CODED )
			switch (keyCode) {
				case UP:
					snakes[0].turn_snake('w');
					break;
				case DOWN:
					snakes[0].turn_snake('s');
					break;
				case LEFT:
					snakes[0].turn_snake('a');
					break;
				case RIGHT:
					snakes[0].turn_snake('d');
			}
	}
	if(home==2 && gamemode == true){
		if( key == 'a' || key == 'd' )
			player.move(key);
		if( key == 'A' || key == 'D' )
			player.move(Character.toLowerCase(key));
		if( key == CODED )
			switch (keyCode) {
				case LEFT:
					player.move('a');
					break;
				case RIGHT:
					player.move('d');
			}
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

void draw_score(int num,int x){
	int first,second,third,fourth;
	fourth = num%10;
	num /= 10;
	third = num%10;
	num /= 10;
	second = num%10;
	num /= 10;
	first = num%10;

	text(first,x,250);
	text(second,x+50,250);
	text(third,x+100,250);
	text(fourth,x+150,250);


}