{
    data[NR] = $1
}
END{
    asort(data,sorted)
    if (NR%4==0){
	median = (sorted[int(NR/4)]+sorted[int(NR/4)+1])/2
    }
    else{
	median = sorted[int((NR+1)/4)]
    }
    printf ("%11.6f \n", median )
}
