Snake[] snakes;
int num = 800;
int count = 0;
int score = 0;

void setup(){
	size(1200,900);
	smooth();
	background(0);
	snakes = new Snake[num];
	for(int i = 0 ; i < num ; i++ ){
		snakes[i] = new Snake();
	}
	FirstValue();
	
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
	textSize(80);
	text("Score", 950, 150);
	textSize(60);
	text(score, 1030, 250);
	// score
	fill(0,255,0);
	for(int i = 0 ; i < num ; i++ ){
		if( i != 0 )
			snakes[i].follow(snakes[i-1].path);
		snakes[i].Run();
		snakes[i].Display();
	}

}

void FirstValue(){
	snakes[0].start(90,30);
	snakes[1].start(60,30);
	snakes[2].start(30,30);
}

void keyPressed() {
	if( key == 'w' || key == 'a' || key == 's' || key == 'd' ){
		snakes[0].turn(key);
	}
}

class Snake {

	boolean on = false;
	int x,y;
	char path = 'd';

	void start(int seat_x,int seat_y){
		on = true;
		x = seat_x;
		y = seat_y;
	}

	void turn(char wasd){
		path = wasd;
	}

	void follow(char pre){
		path = pre;
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
