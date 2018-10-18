int[] snake_x = new int[5];
int[] snake_y = new int[5];
int[] roop = new int[5];

void draw_home(){
	small_snake();

	if( mousePressed == true && mouseButton == LEFT){
		if( mouseX > 100 && mouseX < 550 && mouseY > 120 && mouseY < 550 ){
			home = 1;
			setup();
		}
	}
}

void small_snake(){
	fill(0);
	rect(100,120,450,450);

	fill(0,255,0);
	for(int i = 0 ; i < 5 ; i++ ){
		rect(snake_x[i],snake_y[i],30,30);
	}

	for(int i = 0 ; i < 5 ; i++ ){
		if( roop[i] == 1 ){
			snake_x[i] = snake_x[i] + 30;
			if( snake_x[i] == 520){
				snake_x[i] = 490;
				snake_y[i] = 180;
				roop[i] = 2;
			}
		}
		else if( roop[i] == 2 ){
			snake_y[i] = snake_y[i] + 30;
			if( snake_y[i] == 540 ){
				snake_x[i] = 460;
				snake_y[i] = 510;
				roop[i] = 3;
			}
			
		}
		else if( roop[i] == 3 ){
			snake_x[i] = snake_x[i] - 30;
			if( snake_x[i] == 100 ){
				snake_x[i] = 130;
				snake_y[i] = 510;
				roop[i] = 4;
			}
		}
		else if( roop[i] == 4 ) {
			snake_y[i] = snake_y[i] - 30;
			if( snake_y[i] == 120 ){
				snake_x[i] = 130;
				snake_y[i] = 150;
				roop[i] = 1;
			}
		}

	}


}