Snake[] snakes;
int num = 800;
int count = 0;
int score = 0;
boolean gamemode = false, end = false;
int home = 0;

void setup(){

	size(1200,900);
	smooth();

	if( home == 0 ){
		set_home();
	}
	else if( home == 1 ){
		set_snake();
	}
	else if( home == 2 ){

	}

}

void draw(){

	if( home == 0 ){
		draw_home();
	}
	else if( home == 1 ){
		draw_snake();
	}
	else if( home == 2 ){

	}

}
