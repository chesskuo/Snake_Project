void FirstValue(){
	snakes[0].start(120,30);
	snakes[1].start(90,30);
	snakes[2].start(60,30);
	snakes[3].start(30,30);

}

void keyPressed() {
	if( key == 'w' || key == 'a' || key == 's' || key == 'd' )
		snakes[0].turn(key);
	if( key == ' ' ){
		gamemode = !gamemode;
		if(end == true){
			gamemode = false;
			end = false;
			setup();
		}
	}
}

void mousePressed(){
	if(mouseButton == LEFT){
		gamemode = !gamemode;
		if(end == true){
			gamemode = false;
			end = false;
			setup();
		}
	}
}

void end_game(){
	gamemode = false;
	end = true;
	// loser will change to pic in the future
	textSize(100);
	text("LOSER!!!", 300, 450);
}
