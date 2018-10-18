class Snake {

	boolean on = false;
	int path_num = 30;
	int x,y;
	char path = 'd';
	int stop = 0;

	void start_snake(int seat_x,int seat_y){
		on = true;
		x = seat_x;
		y = seat_y;
	}

	void turn_snake(char wasd){
		if( wasd == 'w' && path != 's' )
			path = wasd;
		else if( wasd == 's' && path != 'w' )
			path = wasd;
		else if( wasd == 'a' && path != 'd' )
			path = wasd;
		else if( wasd == 'd' && path != 'a' )
			path = wasd;
	}

	void follow_snake(char pre){
		if( path_num == 0 ){
			path_num = 30;
			path = pre;
		}

		if( path != pre ){
			path_num = path_num - 5;
		}
	}

	void stop_snake(){
		stop = 30;
	}

	void run_snake(){
		if( stop == 0 ){
			if(on==true){
				if( path == 'w' ){
					y = y - 5;
				}
				else if( path == 's' ){
					y = y + 5;
				}
				else if( path == 'a' ){
					x = x - 5;
				}
				else if( path == 'd' ){
					x = x + 5;
				}
			}
		}
		else{
			stop = stop - 5;
		}
	}

	void display_snake(){
		if(on==true)
			rect(x,y,30,30);
	}

}