BEGIN{
    pi = atan2(0,-1)

    while(i < n){
	x1 = rand()
	x2 = rand()

	if(x1 != 0){
	    print sqrt(-2 * log(x1)) * cos(2 * pi * x2)
	    i++
	    
	    if(i >= n) break
	    
	    print sqrt(-2 * log(x1)) * sin(2 * pi * x2)
	    i++
	}
    }
}
