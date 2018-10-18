int[] snake_x = new int[5];
int[] snake_y = new int[5];
int[] roop = new int[5];
float fruit_x,fruit_y;

void set_small_snake() {
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
	
	fruit_x = random(190,460);
	fruit_y = random(210,480);
}