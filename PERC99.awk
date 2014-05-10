{
    data[NR] = $1
}
END{
    asort(data,sorted)
    if (NR%4==0){
	median = (sorted[int(NR*99/100)]+sorted[int(NR*99/100)+1])/2
    }
    else{
	median = sorted[int((NR+1)*99/100)]
    }
    printf ("%11.6f \n", median )
}
