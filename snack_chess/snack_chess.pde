Snake[] snakes;
int num = 800;
int count = 0;
int score = 0;
boolean gamemode = false;

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
	fill(102, 204, 255); //(30,30),(870,30),(870,870),(30,870)
	rect(0,0,900,30);
	rect(0,0,30,900);
	rect(870,0,30,900);
	rect(0,870,900,30);

	fill(255);
	textSize(60);
	text(score, 1030, 250);

	fill(0,255,0);
	for(int i = 0 ; i < num ; i++ ){
		if(i == 0)
		{
			if((snakes[0].x < 0 || snakes[0].x > 845) || (snakes[0].y < 0 || snakes[0].y > 845))
			{
				end_game();
				gamemode = false;
			}

		}

		if(gamemode == true)
			snakes[i].Run();
		snakes[i].Display();
	}
}

void FirstValue(){
	snakes[0].start(90,30);
	snakes[1].start(60,30);
	snakes[2].start(30,30);
}

class Snake {

	boolean on = false;
	int x,y;
	int path;

	void start(int seat_x,int seat_y){
		on = true;
		x = seat_x;
		y = seat_y;
	}

	void Run(){
		if(on==true){
			x = x + 3;
		}
	}

	void Display(){
		if(on==true)
			rect(x,y,30,30);
	}

}

void keyPressed()
{
	if(key == ' ' && gamemode == false)
		gamemode = true;
	else if(key == ' ' && gamemode == true)
		gamemode = false;
}

void mousePressed()
{
	if(mouseButton == LEFT && gamemode == false)
		gamemode = true;
	else if(mouseButton == LEFT && gamemode == true)
		gamemode = false;
}

void end_game()
{
	setup();
}
