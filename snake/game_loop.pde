void FirstValue_snake(){
	snakes[0].start(120,30);
	snakes[1].start(90,30);
	snakes[2].start(60,30);
	snakes[3].start(30,30);

}

void keyPressed() {
	if( key == ' ' ){
		gamemode = !gamemode;
		if(end == true){
			gamemode = false;
			end = false;
			setup();
		}
	}
}

void end_game_snake(){
	gamemode = false;
	end = true;
	// loser will change to pic in the future
	textSize(100);
	text("LOSER!!!", 300, 450);
}
