NR == 1{
    max = $1
}
{
    if($1 > max) max = $1
}
END{
    if(NR == 0) exit
    
    printf ("%11.6f \n", max )
}
