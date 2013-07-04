#!/bin/awk -f 

{
    if(binsize <= 0) exit

    if($1 < 0){
	frequency[int($1 / binsize) - 1] ++
    }else{
	frequency[int($1 / binsize)] ++
    }
}
END{
    for(i in frequency){
	printf("%10d %15.8f %10d\n", i * binsize, (frequency[i]/NR), frequency[i]) | "sort -n"
#	print i*binsize, frequency[i] | "sort -n"
    }
}
