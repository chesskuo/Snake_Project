void draw_snake(){

	if( keyPressed == true ){
		if( key == 'w' || key == 'a' || key == 's' || key == 'd' )
			snakes[0].turn(key);
	}
	
	fill(0);
	rect(0,0,900,900);
	noStroke();
	fill(102, 204, 255);//(30,30),(870,30),(870,870),(30,870)
	rect(0,0,900,30);
	rect(0,0,30,900);
	rect(870,0,30,900);
	rect(0,870,900,30);
	// back & frame

	fill(255);
	textSize(60);
	text(score, 1030, 250);
	// score
	fill(0,255,0);
	for(int i = 0 ; i < num ; i++ ){

		if(i == 0){ // hit the wall
			if((snakes[1].x < 25 || snakes[1].x > 845) || (snakes[1].y < 25 || snakes[1].y > 845)){
				end_game_snake();
			}
		}

		if( i != 0 && gamemode == true){//turn
			snakes[i].Run();
			snakes[i].follow(snakes[i-1].path);
		}
		if( i != 0 )
			snakes[i].Display();
	}

	if( mousePressed == true && mouseButton == LEFT ){
		if( mouseX > 950 && mouseX < 1150 && mouseY > 600 && mouseY < 700 ){
			home = 0;
			setup();
		}
	}

}