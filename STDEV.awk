{
    x[NR] = $1
}
END{
    for(i in x){
	sum_x += x[i]
    }
    m_x = sum_x / NR 
	for(i in x){
	    sum_dx2 += (x[i] - m_x) ^ 2
	} 
    printf ("%11.6f \n", sqrt(sum_dx2/NR) )
}
