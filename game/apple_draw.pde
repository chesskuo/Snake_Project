void new_apple(){
	apples.start_apple( int(random(60,840)) , int(random(60,840)) );
	while(true){
		for(int i = 1 ; i < count ; i++ ){
			if( apples.x > snakes[i].x && apples.x < snakes[i].x+30 && apples.y > snakes[i].y && apples.y < snakes[i].y+30 ){
				apples.start_apple( int(random(60,840)) , int(random(60,840)) );
				continue;
			}
		}
		break;
	}
	apples.on = true;
}

void eat(){
	apples.on = false;
	Grow_snake();
	score = score+10;
}
