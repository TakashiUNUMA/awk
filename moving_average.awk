NR==1{
  y1 = $1
}
NR==2{
  y2 = $1
}
NR==3{
  y3 = $1
}
NR==4{
  y4 = $1
}
NR>5{
  y5 = $1

  print (y1 + y2 + y3 + y4 + y5) / 5, $2

  y1 = y2
  y2 = y3
  y3 = y4
  y4 = y5
}
