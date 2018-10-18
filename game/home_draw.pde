void draw_home(){

	background(63,72,204);
	fill(195);
	textSize(60);
	text("Click Picture to Enter the Game",150,650);
	text("by SunTalk && Chess",275,750);
	textSize(30);
	text("© 2018 Game-Project",450,850);
	
	draw_small_snake();
	draw_small_car();

	if( mousePressed == true && mouseButton == LEFT){
		if( mouseX > 100 && mouseX < 550 && mouseY > 120 && mouseY < 550 ){
			home = 1;
			setup();
		}
		if( mouseX > 650 && mouseX < 1100 && mouseY > 120 && mouseY < 550 ){
			home = 2;
			setup();
		}
	}
}
