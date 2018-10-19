boolean snakes_end;
void set_snake(){
	
	frameRate(60);

	snakes_end = false;
	score = 0;
	count = 4;
	background(0);
	snakes = new Snake[num];
	apples = new Apple();
	for(int i = 0 ; i < num ; i++ ){
		snakes[i] = new Snake();
	}

	FirstValue_snake();
	apples.start_apple( int(random(60,840)) , int(random(60,840)) );
	// score text
	fill(255);
	textSize(60);
	text("SCORE", 940, 150);
	
	// pause = true; & start
	fill(195);
	rect(950,700,200,100);
	textSize(50);
	fill(0);
	text("HOME",980,770);
}