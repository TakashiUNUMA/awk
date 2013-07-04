NR == 1{
    min = $1
}
{
    if($1 < min) min = $1
}
END{
    if(NR == 0) exit
    
    printf ("%11.6f \n", min )
}
