NR==1{
  y1 = $1
}
NR==2{
  y2 = $1
}
NR>2{
  y3 = $1

  print (y1 + y2 + y3) / 3, $2

  y1 = y2
  y2 = y3
}
