void set_snake(){
	background(0);
	snakes = new Snake[num];
	for(int i = 0 ; i < num ; i++ ){
		snakes[i] = new Snake();
	}
	FirstValue_snake();

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