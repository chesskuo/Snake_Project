
int[] snake_x = new int[5];
int[] snake_y = new int[5];
int roop; 

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
		rect(snake_x[i],snake_y[i],15,15);
	}

	for(int i = 4 ; i > 0 ; i-- ){
		snake_x[i] = snake_x[i-1];
		snake_y[i] = snake_y[i-1];
	}

	if( roop == 1 ){
		snake_x[0] = snake_x[0] + 15;
		if( snake_x[0] == 535){
			snake_x[0] = 520;
			snake_y[0] = 150;
			roop = 2;
		}
	}
	else if( roop == 2 ){
		snake_y[0] = snake_y[0] + 15;
		if( snake_y[0] == 555 ){
			snake_x[0] = 505;
			snake_y[0] = 540;
			roop = 3;
		}
		
	}
	else if( roop == 3 ){
		snake_x[0] = snake_x[0] - 15;
		if( snake_x[0] == 100 ){
			snake_x[0] = 115;
			snake_y[0] = 525;
			roop = 4;
		}
	}
	else if( roop == 4 ) {
		snake_y[0] = snake_y[0] - 15;
		if( snake_y[0] == 120 ){
			snake_x[0] = 130;
			snake_y[0] = 135;
			roop = 1;
		}
	}
}