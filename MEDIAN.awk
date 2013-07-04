{
    data[NR] = $1
}
END{
    asort(data,sorted)
    if (NR%2==0){
	median = (sorted[NR/2]+sorted[NR/2+1])/2
    }
    else{
	median = sorted[(NR+1)/2]
    }
    printf ("%11.6f \n", median )
}
