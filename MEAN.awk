{
    sum += $1
}
END{
    printf ("%11.6f \n", sum/NR )
}
