{
    data[NR] = $1
}
END{
    asort(data,sorted)
    if (NR%4==0){
	median = (sorted[int(NR*9/10)]+sorted[int(NR*9/10)+1])/2
    }
    else{
	median = sorted[int((NR+1)*9/10)]
    }
    printf ("%11.6f \n", median )
}
