Snake[] snakes;
int num = 800;
int count = 0;
int score = 0;
boolean gamemode = false, end = false;

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

	fill(0);
	rect(0,0,900,900);
	noStroke();
	fill(102, 204, 255);//(30,30),(870,30),(870,870),(30,870)
	rect(0,0,900,30);
	rect(0,0,30,900);
	rect(870,0,30,900);
	rect(0,870,900,30);
	// back & frame

	fill(255);
	textSize(60);
	text(score, 1030, 250);
	// score
	fill(0,255,0);
	for(int i = 0 ; i < num ; i++ ){

		if(i == 0){ // hit the wall
			if((snakes[1].x < 25 || snakes[1].x > 845) || (snakes[1].y < 25 || snakes[1].y > 845)){
				end_game();
			}
		}

		if( i != 0 && gamemode == true){//turn
			snakes[i].Run();
			snakes[i].follow(snakes[i-1].path);
		}
		if( i != 0 )
			snakes[i].Display();
	}

}

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

class Snake {

	boolean on = false;
	int path_num = 30;
	int x,y;
	char path = 'd';

	void start(int seat_x,int seat_y){
		on = true;
		x = seat_x;
		y = seat_y;
	}

	void turn(char wasd){
		if( wasd == 'w' && path != 's' )
			path = wasd;
		else if( wasd == 's' && path != 'w' )
			path = wasd;
		else if( wasd == 'a' && path != 'd' )
			path = wasd;
		else if( wasd == 'd' && path != 'a' )
			path = wasd;
	}

	void follow(char pre){
		if( path_num == 0 ){
			path_num = 30;
			path = pre;
		}

		if( path != pre ){
			path_num = path_num - 3;
		}
	}

	void Run(){
		if(on==true){
			if( path == 'w' )
				y = y - 3;
			else if( path == 's' )
				y = y + 3;
			else if( path == 'a' )
				x = x - 3;
			else if( path == 'd' )
				x = x + 3;
		}
	}

	void Display(){
		if(on==true)
			rect(x,y,30,30);
	}

}
