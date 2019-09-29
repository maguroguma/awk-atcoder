{ S = $0; exit; }
END {
  l = split(S, T, "");
  for (i = 1; i <= l; i++) {
    if (i % 2 == 0 && T[i] == "R") {
      print "No";
      exit;
    } else if (i % 2 == 1 && T[i] == "L") {
      print "No";
      exit;
    }
  }
  print "Yes";
}
