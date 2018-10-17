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