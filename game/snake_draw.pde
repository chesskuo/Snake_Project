void draw_snake(){

	// if( keyPressed == true ){
	// 	if( key == 'w' || key == 'a' || key == 's' || key == 'd' )
	// 		snakes[0].turn_snake(key);
	// }
	
	fill(0);
	rect(0,0,900,900);
	noStroke();
	fill(102, 204, 255);//(30,30),(870,30),(870,870),(30,870)
	rect(0,0,900,30);
	rect(0,0,30,900);
	rect(870,0,30,900);
	rect(0,870,900,30);
	// back & frame

	fill(0);
	rect(1000,150,300,300);
	fill(255);
	textSize(60);
	text("SCORE", 950, 150);
	text(score, 1030, 250);
	// score

	if(gamemode == false && end == false )
	{
		textSize(60);
		fill(63,72,204);
		text("PAUSE", 360, 480);
	}// pause

	stroke(1);
	if( apples.on == false ){
		new_apple();
	}

	for(int i = 0 ; i < num ; i++ ){

		if(i == 0){ // hit the wall
			if((snakes[1].x < 25 || snakes[1].x > 845) || (snakes[1].y < 25 || snakes[1].y > 845)){
				end_game_snake();
			}
		}

		if( i != 0 && gamemode == true){// turn
			snakes[i].run_snake();
			snakes[i].follow_snake(snakes[i-1].path);
		}
		if( i != 0 ){
			fill(255,0,0);
			apples.display_apple();
			fill(0,255,0);
			snakes[i].display_snake();
		}
	}

	if( apples.x > snakes[1].x && apples.x < snakes[1].x+30 && apples.y > snakes[1].y && apples.y < snakes[1].y+30 ){
		eat();
	}

	if( mousePressed == true && mouseButton == LEFT ){
		if( mouseX > 950 && mouseX < 1150 && mouseY > 700 && mouseY < 800 ){
			home = 0;
			setup();
		}
	}

}