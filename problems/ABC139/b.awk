{
  a = $1; b = $2;

  if (b == 1) {
    print 0;
    exit;
  }

  num = a;
  res = 1;
  for (i = 2; ; i++) {
    if (num >= b) break;
    num += a-1;
    res = i;
  }
  print res;
  exit;
}
