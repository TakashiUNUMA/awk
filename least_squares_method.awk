{
    x[NR] = $1
    y[NR] = $2
}
END{
    if(NR <= 1) exit
    
    for(i in x){
	sum_x += x[i]
	sum_y += y[i]
	sum_x2 += x[i] ^ 2
	sum_xy += x[i] * y[i]
    }
    
    if(NR * sum_x2 - sum_x ^ 2 == 0.0) exit
    
    a = (NR * sum_xy - sum_x * sum_y) / (NR * sum_x2 - sum_x ^ 2)
    b = (sum_x2 * sum_y - sum_x * sum_xy) / (NR * sum_x2 - sum_x ^ 2)
    
    for(i in x){
	sum_e2 += (a * x[i] + b - y[i]) ^ 2
    }
    
    printf ("%11.6f %11.6f %11.6f \n", a, b, sqrt(sum_e2 / NR) )
}
