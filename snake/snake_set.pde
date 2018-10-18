void set_snake(){
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
	textSize(80);
	text("Score", 950, 150);
	
	// pause & start
	fill(195);
	rect(950,600,200,100);
	textSize(50);
	fill(0);
	text("Home",970,670);
}