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

	snake_x[0] = 250;
	snake_x[1] = 220;
	snake_x[2] = 190;
	snake_x[3] = 160;
	snake_x[4] = 130;

	snake_y[0] = 150;
	snake_y[1] = 150;
	snake_y[2] = 150;
	snake_y[3] = 150;
	snake_y[4] = 150;

	roop[0] = 1;
	roop[1] = 1;
	roop[2] = 1;
	roop[3] = 1;
	roop[4] = 1;
}