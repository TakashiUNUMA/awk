{
  x[NR] = $1
  y[NR] = $2
}
END{
    if(NR == 0) exit
    
    for(i in x){
	sum_x += x[i]
	sum_y += y[i]
    }
    
    m_x = sum_x / NR
    m_y = sum_y / NR
    
    for(i in x){
	sum_dx2 += (x[i] - m_x) ^ 2
	sum_dy2 += (y[i] - m_y) ^ 2
	sum_dxdy += (x[i] - m_x) * (y[i] - m_y)
    }
    
    if(sum_dx2 == 0.0 || sum_dy2 == 0.0) exit
    
    printf ("%5.2f \n" sum_dxdy / sqrt(sum_dx2) / sqrt(sum_dy2) )
}
