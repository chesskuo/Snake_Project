void set_home(){

	background(63,72,204);
	fill(0);
	rect(100,120,450,450);
	rect(650,120,450,450);

	fill(195);
	textSize(60);
	text("Click Picture to Enter the Game",150,650);
	text("by SunTalk && Chess",275,750);
	textSize(30);
	text("© 2018 Game-Project",450,850);

	snake_x[0] = 175;
	snake_x[1] = 160;
	snake_x[2] = 145;
	snake_x[3] = 130;
	snake_x[4] = 115;

	snake_y[0] = 135;
	snake_y[1] = 135;
	snake_y[2] = 135;
	snake_y[3] = 135;
	snake_y[4] = 135;

	roop = 1;
}