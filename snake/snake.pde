Snake[] snakes;
int num = 800;
int count = 0;
int score = 0;
boolean gamemode = false, end = false;
int home = 1;

void setup(){
	size(1200,900);
	smooth();
	background(0);
	snakes = new Snake[num];
	for(int i = 0 ; i < num ; i++ ){
		snakes[i] = new Snake();
	}
	FirstValue();

	// score text
	fill(255);
	textSize(80);
	text("Score", 950, 150);
	
	// pause & start
	textSize(40);
	text("Pause/Start", 940, 500);
	text("|", 1050, 550);
	text("V", 1045, 600);
	text("Please Press", 940, 650);
	text("Space OR", 940, 700);
	text("Left Buttom", 940, 750);
}

void draw(){

	if( home == 0 ){

	}
	else if( home == 1 ){
		draw_snake();
	}
	else if( home == 2 ){

	}

}
