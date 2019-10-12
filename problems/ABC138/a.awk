NR == 1 { a = $0; }
NR == 2 { S = $0; exit; }
END {
  if (a >= 3200) print S;
  else print "red";
}