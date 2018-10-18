void draw_small_car(){
	fill(0);
	rect(650,120,450,450); // 650 1070 30
	fill(255);
	small_road_time--;
	if( small_road_time == 0 ){
		small_road_time = 20;
		for(int i = 0 ; i < 6 ; i++ ){
			small_road[i] = small_road[i] + 30;
		}
	}	
	
	for(int i = 0 ; i < 6 ; i++ ){
		rect(650,small_road[i],30,30);
		rect(650,small_road[i]+30,30,30);
		rect(1070,small_road[i],30,30);
		rect(1070,small_road[i]+30,30,30);
	}

}